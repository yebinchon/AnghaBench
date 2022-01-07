; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RecvInProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RecvInProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_12__*, i32*, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }

@SOCK_INPROC = common dso_local global i64 0, align 8
@SOCK_LATER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RecvInProc(%struct.TYPE_11__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = icmp eq %struct.TYPE_11__* %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SOCK_INPROC, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %23, %17, %3
  store i64 0, i64* %4, align 8
  br label %162

34:                                               ; preds = %28
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = call i32 @IsTubeConnected(%struct.TYPE_12__* %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i64 0, i64* %4, align 8
  br label %162

41:                                               ; preds = %34
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i64 0, i64* %4, align 8
  br label %162

48:                                               ; preds = %41
  %49 = load i32*, i32** %8, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @ReadFifo(i32* %49, i8* %50, i64 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %4, align 8
  br label %162

57:                                               ; preds = %48
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = call i64 @GetTimeout(%struct.TYPE_11__* %58)
  store i64 %59, i64* %10, align 8
  %60 = call i64 (...) @Tick64()
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %60, %61
  store i64 %62, i64* %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  br label %63

63:                                               ; preds = %57, %96
  store i64 0, i64* %13, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = call i64 (...) @Tick64()
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %107

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %63
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = call %struct.TYPE_10__* @TubeRecvAsync(%struct.TYPE_12__* %78)
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %12, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %81 = icmp ne %struct.TYPE_10__* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %107

83:                                               ; preds = %75
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = call i32 @IsTubeConnected(%struct.TYPE_12__* %86)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %107

90:                                               ; preds = %83
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %107

96:                                               ; preds = %90
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %13, align 8
  %99 = sub nsw i64 %97, %98
  store i64 %99, i64* %14, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %14, align 8
  %106 = call i32 @Wait(i32 %104, i64 %105)
  br label %63

107:                                              ; preds = %95, %89, %82, %73
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %109 = icmp eq %struct.TYPE_10__* %108, null
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = call i32 @IsTubeConnected(%struct.TYPE_12__* %113)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i64 0, i64* %4, align 8
  br label %162

117:                                              ; preds = %110
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = call i32 @Disconnect(%struct.TYPE_11__* %123)
  store i64 0, i64* %4, align 8
  br label %162

125:                                              ; preds = %117
  %126 = load i64, i64* @SOCK_LATER, align 8
  store i64 %126, i64* %4, align 8
  br label %162

127:                                              ; preds = %107
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %7, align 8
  %132 = icmp sgt i64 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %127
  %134 = load i32*, i32** %8, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i32*
  %139 = load i64, i64* %7, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %7, align 8
  %145 = sub nsw i64 %143, %144
  %146 = call i32 @WriteFifo(i32* %134, i32* %140, i64 %145)
  %147 = load i64, i64* %7, align 8
  store i64 %147, i64* %9, align 8
  br label %152

148:                                              ; preds = %127
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %9, align 8
  br label %152

152:                                              ; preds = %148, %133
  %153 = load i8*, i8** %6, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %9, align 8
  %158 = call i32 @Copy(i8* %153, i64 %156, i64 %157)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %160 = call i32 @FreeTubeData(%struct.TYPE_10__* %159)
  %161 = load i64, i64* %9, align 8
  store i64 %161, i64* %4, align 8
  br label %162

162:                                              ; preds = %152, %125, %122, %116, %55, %47, %40, %33
  %163 = load i64, i64* %4, align 8
  ret i64 %163
}

declare dso_local i32 @IsTubeConnected(%struct.TYPE_12__*) #1

declare dso_local i64 @ReadFifo(i32*, i8*, i64) #1

declare dso_local i64 @GetTimeout(%struct.TYPE_11__*) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local %struct.TYPE_10__* @TubeRecvAsync(%struct.TYPE_12__*) #1

declare dso_local i32 @Wait(i32, i64) #1

declare dso_local i32 @Disconnect(%struct.TYPE_11__*) #1

declare dso_local i32 @WriteFifo(i32*, i32*, i64) #1

declare dso_local i32 @Copy(i8*, i64, i64) #1

declare dso_local i32 @FreeTubeData(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
