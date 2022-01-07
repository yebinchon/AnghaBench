; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lparser.c_leaveblock.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lparser.c_leaveblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_21__*, i32, i64, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i64, i32* }
%struct.TYPE_16__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @leaveblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leaveblock(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %8, %struct.TYPE_21__** %3, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %4, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %15 = icmp ne %struct.TYPE_21__* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %23 = call i32 @luaK_jump(%struct.TYPE_20__* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @luaK_patchclose(%struct.TYPE_20__* %24, i32 %25, i64 %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @luaK_patchtohere(%struct.TYPE_20__* %30, i32 %31)
  br label %33

33:                                               ; preds = %21, %16, %1
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %40 = call i32 @breaklabel(%struct.TYPE_19__* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 2
  store %struct.TYPE_21__* %44, %struct.TYPE_21__** %46, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @removevars(%struct.TYPE_20__* %47, i64 %50)
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @lua_assert(i32 %59)
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %75, align 8
  %77 = icmp ne %struct.TYPE_21__* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %41
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %81 = call i32 @movegotosout(%struct.TYPE_20__* %79, %struct.TYPE_21__* %80)
  br label %107

82:                                               ; preds = %41
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %85, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %82
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = call i32 @undefgoto(%struct.TYPE_19__* %94, i32* %104)
  br label %106

106:                                              ; preds = %93, %82
  br label %107

107:                                              ; preds = %106, %78
  ret void
}

declare dso_local i32 @luaK_jump(%struct.TYPE_20__*) #1

declare dso_local i32 @luaK_patchclose(%struct.TYPE_20__*, i32, i64) #1

declare dso_local i32 @luaK_patchtohere(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @breaklabel(%struct.TYPE_19__*) #1

declare dso_local i32 @removevars(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @movegotosout(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @undefgoto(%struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
