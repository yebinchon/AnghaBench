; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_SetHubOnline.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_SetHubOnline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_14__*, i32, i32, i32, i32*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32*, i32 }

@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@HUB_TYPE_FARM_DYNAMIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"LH_ONLINE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetHubOnline(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %7 = icmp eq %struct.TYPE_16__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %170

9:                                                ; preds = %1
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %9
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HUB_TYPE_FARM_DYNAMIC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %26
  br label %34

34:                                               ; preds = %33, %16, %9
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @Lock(i32 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @Unlock(i32 %46)
  br label %170

48:                                               ; preds = %34
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %50 = call i32 @HLog(%struct.TYPE_16__* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %52 = call i32 @StartAllLink(%struct.TYPE_16__* %51)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %48
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i32* @SnNewSecureNAT(%struct.TYPE_16__* %66, i32 %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 6
  store i32* %70, i32** %72, align 8
  br label %73

73:                                               ; preds = %65, %62
  br label %74

74:                                               ; preds = %73, %57
  br label %75

75:                                               ; preds = %74, %48
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HUB_TYPE_FARM_DYNAMIC, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %154

81:                                               ; preds = %75
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @LockList(i32 %86)
  store i64 0, i64* %4, align 8
  br label %88

88:                                               ; preds = %144, %81
  %89 = load i64, i64* %4, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @LIST_NUM(i32 %94)
  %96 = icmp slt i64 %89, %95
  br i1 %96, label %97, label %147

97:                                               ; preds = %88
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* %4, align 8
  %104 = call %struct.TYPE_15__* @LIST_DATA(i32 %102, i64 %103)
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %5, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @StrCmpi(i32 %107, i32 %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %143

113:                                              ; preds = %97
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 6
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %142

118:                                              ; preds = %113
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %139 = call i32* @BrNewBridge(%struct.TYPE_16__* %119, i32 %122, i32* null, i32 %125, i32 %128, i32 %131, i32 %134, i32 %137, %struct.TYPE_15__* %138)
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 6
  store i32* %139, i32** %141, align 8
  br label %142

142:                                              ; preds = %118, %113
  br label %143

143:                                              ; preds = %142, %97
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %4, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %4, align 8
  br label %88

147:                                              ; preds = %88
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @UnlockList(i32 %152)
  br label %154

154:                                              ; preds = %147, %75
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  store i32 0, i32* %156, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @Unlock(i32 %159)
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = icmp ne %struct.TYPE_13__* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %154
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %169 = call i32 @SiHubOnlineProc(%struct.TYPE_16__* %168)
  br label %170

170:                                              ; preds = %8, %43, %167, %154
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @HLog(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @StartAllLink(%struct.TYPE_16__*) #1

declare dso_local i32* @SnNewSecureNAT(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_15__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @StrCmpi(i32, i32) #1

declare dso_local i32* @BrNewBridge(%struct.TYPE_16__*, i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @SiHubOnlineProc(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
