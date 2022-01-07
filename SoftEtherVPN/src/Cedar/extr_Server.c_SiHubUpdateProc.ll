; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiHubUpdateProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiHubUpdateProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_16__ = type { i32 }

@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"SiHubUpdateProc HUB=%s, Ver=%u, Type=%u, Offline=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiHubUpdateProc(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = icmp eq %struct.TYPE_15__* %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = icmp eq %struct.TYPE_13__* %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = icmp eq %struct.TYPE_14__* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22, %15, %10, %1
  br label %153

33:                                               ; preds = %22
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %3, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %153

44:                                               ; preds = %33
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %145

57:                                               ; preds = %52, %44
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @Debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76, i32 %79, i32 %82)
  %84 = call i32* @NewListFast(i32* null)
  store i32* %84, i32** %5, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @LockList(i32* %87)
  br label %89

89:                                               ; preds = %65, %129
  store i32 1, i32* %6, align 4
  store i64 0, i64* %4, align 8
  br label %90

90:                                               ; preds = %122, %89
  %91 = load i64, i64* %4, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i64 @LIST_NUM(i32* %94)
  %96 = icmp slt i64 %91, %95
  br i1 %96, label %97, label %125

97:                                               ; preds = %90
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %4, align 8
  %102 = call %struct.TYPE_16__* @LIST_DATA(i32* %100, i64 %101)
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** %7, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %105 = call i32 @IsInList(i32* %103, %struct.TYPE_16__* %104)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %97
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %110 = call i32 @Add(i32* %108, %struct.TYPE_16__* %109)
  store i32 0, i32* %6, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %107
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %119 = call i32 @SiCallUpdateHub(%struct.TYPE_14__* %116, %struct.TYPE_16__* %117, %struct.TYPE_15__* %118)
  br label %120

120:                                              ; preds = %115, %107
  br label %125

121:                                              ; preds = %97
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %4, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %4, align 8
  br label %90

125:                                              ; preds = %120, %90
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %138

129:                                              ; preds = %125
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @UnlockList(i32* %132)
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @LockList(i32* %136)
  br label %89

138:                                              ; preds = %128
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @UnlockList(i32* %141)
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 @ReleaseList(i32* %143)
  br label %145

145:                                              ; preds = %138, %52
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %152 = call i32 @SiHubOnlineProc(%struct.TYPE_15__* %151)
  br label %153

153:                                              ; preds = %32, %43, %150, %145
  ret void
}

declare dso_local i32 @Debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @LockList(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_16__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @IsInList(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @SiCallUpdateHub(%struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @UnlockList(i32*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i32 @SiHubOnlineProc(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
