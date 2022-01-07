; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CheckNetwork.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CheckNetwork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@CheckNetworkListenThread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Connect Failed. (%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Recv Failed (Disconnected).\0A\00", align 1
@SOCK_LATER = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckNetwork() #0 {
  %1 = alloca %struct.TYPE_14__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 1, i32* %7, align 4
  %15 = call i32* (...) @NewSockEvent()
  store i32* %15, i32** %9, align 8
  %16 = call i32 @Zero(%struct.TYPE_14__* %1, i32 8)
  %17 = load i32, i32* @CheckNetworkListenThread, align 4
  %18 = call i32* @NewThread(i32 %17, %struct.TYPE_14__* %1)
  store i32* %18, i32** %2, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @WaitThreadInit(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %3, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  store i32 8, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call %struct.TYPE_13__** @ZeroMalloc(i32 %29)
  store %struct.TYPE_13__** %30, %struct.TYPE_13__*** %8, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %78, %0
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %81

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = call %struct.TYPE_13__* @Connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %38, i64 %40
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %41, align 8
  %42 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %42, i64 %44
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = icmp eq %struct.TYPE_13__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32 0, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %6, align 4
  br label %81

52:                                               ; preds = %35
  %53 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %53, i64 %55
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = call i32 @StartSSL(%struct.TYPE_13__* %57, i32* null, i32* null)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %61, i64 %63
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = call i32 @ReleaseSock(%struct.TYPE_13__* %65)
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store i32 0, i32* %7, align 4
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %6, align 4
  br label %81

70:                                               ; preds = %52
  %71 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %71, i64 %73
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @JoinSockToSockEvent(%struct.TYPE_13__* %75, i32* %76)
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %31

81:                                               ; preds = %60, %48, %31
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %128

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84, %126
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %112, %85
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %86
  store i32 0, i32* %13, align 4
  %91 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %91, i64 %93
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = call i32 @Recv(%struct.TYPE_13__* %95, i32* %13, i32 4, i32 1)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @Print(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  store i32 1, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %99, %90
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @SOCK_LATER, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %106, %102
  %108 = load i32, i32* %13, align 4
  %109 = icmp sge i32 %108, 128
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 1, i32* %11, align 4
  br label %111

111:                                              ; preds = %110, %107
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %86

115:                                              ; preds = %86
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %127

119:                                              ; preds = %115
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* @INFINITE, align 4
  %125 = call i32 @WaitSockEvent(i32* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %119
  br label %85

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127, %81
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %146, %128
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %129
  %134 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %134, i64 %136
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = call i32 @Disconnect(%struct.TYPE_13__* %138)
  %140 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %140, i64 %142
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = call i32 @ReleaseSock(%struct.TYPE_13__* %144)
  br label %146

146:                                              ; preds = %133
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %129

149:                                              ; preds = %129
  %150 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %151 = call i32 @Free(%struct.TYPE_13__** %150)
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %153 = call i32 @Disconnect(%struct.TYPE_13__* %152)
  %154 = load i32*, i32** %2, align 8
  %155 = load i32, i32* @INFINITE, align 4
  %156 = call i32 @WaitThread(i32* %154, i32 %155)
  %157 = load i32*, i32** %2, align 8
  %158 = call i32 @ReleaseThread(i32* %157)
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %160 = call i32 @ReleaseSock(%struct.TYPE_13__* %159)
  %161 = load i32*, i32** %9, align 8
  %162 = call i32 @ReleaseSockEvent(i32* %161)
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32* @NewSockEvent(...) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @WaitThreadInit(i32*) #1

declare dso_local %struct.TYPE_13__** @ZeroMalloc(i32) #1

declare dso_local %struct.TYPE_13__* @Connect(i8*, i32) #1

declare dso_local i32 @Print(i8*, i32) #1

declare dso_local i32 @StartSSL(%struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_13__*) #1

declare dso_local i32 @JoinSockToSockEvent(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @Recv(%struct.TYPE_13__*, i32*, i32, i32) #1

declare dso_local i32 @WaitSockEvent(i32*, i32) #1

declare dso_local i32 @Disconnect(%struct.TYPE_13__*) #1

declare dso_local i32 @Free(%struct.TYPE_13__**) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i32 @ReleaseSockEvent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
