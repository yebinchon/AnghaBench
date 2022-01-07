; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lparser.c_statement.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lparser.c_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_25__ }
%struct.TYPE_24__ = type { i64, i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i32 }

@TK_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*)* @statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @statement(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %4 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %8 = call i32 @enterlevel(%struct.TYPE_27__* %7)
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %78 [
    i32 59, label %13
    i32 132, label %16
    i32 128, label %20
    i32 136, label %24
    i32 135, label %33
    i32 130, label %37
    i32 134, label %41
    i32 131, label %45
    i32 137, label %58
    i32 129, label %66
    i32 138, label %71
    i32 133, label %71
  ]

13:                                               ; preds = %1
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %15 = call i32 @luaX_next(%struct.TYPE_27__* %14)
  br label %81

16:                                               ; preds = %1
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @ifstat(%struct.TYPE_27__* %17, i32 %18)
  br label %81

20:                                               ; preds = %1
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @whilestat(%struct.TYPE_27__* %21, i32 %22)
  br label %81

24:                                               ; preds = %1
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %26 = call i32 @luaX_next(%struct.TYPE_27__* %25)
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %28 = call i32 @block(%struct.TYPE_27__* %27)
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %30 = load i32, i32* @TK_END, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @check_match(%struct.TYPE_27__* %29, i32 %30, i32 136, i32 %31)
  br label %81

33:                                               ; preds = %1
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @forstat(%struct.TYPE_27__* %34, i32 %35)
  br label %81

37:                                               ; preds = %1
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @repeatstat(%struct.TYPE_27__* %38, i32 %39)
  br label %81

41:                                               ; preds = %1
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @funcstat(%struct.TYPE_27__* %42, i32 %43)
  br label %81

45:                                               ; preds = %1
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %47 = call i32 @luaX_next(%struct.TYPE_27__* %46)
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %49 = call i32 @testnext(%struct.TYPE_27__* %48, i32 134)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %53 = call i32 @localfunc(%struct.TYPE_27__* %52)
  br label %57

54:                                               ; preds = %45
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %56 = call i32 @localstat(%struct.TYPE_27__* %55)
  br label %57

57:                                               ; preds = %54, %51
  br label %81

58:                                               ; preds = %1
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %60 = call i32 @luaX_next(%struct.TYPE_27__* %59)
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %63 = call i32 @str_checkname(%struct.TYPE_27__* %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @labelstat(%struct.TYPE_27__* %61, i32 %63, i32 %64)
  br label %81

66:                                               ; preds = %1
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %68 = call i32 @luaX_next(%struct.TYPE_27__* %67)
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %70 = call i32 @retstat(%struct.TYPE_27__* %69)
  br label %81

71:                                               ; preds = %1, %1
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %74, align 8
  %76 = call i32 @luaK_jump(%struct.TYPE_24__* %75)
  %77 = call i32 @gotostat(%struct.TYPE_27__* %72, i32 %76)
  br label %81

78:                                               ; preds = %1
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %80 = call i32 @exprstat(%struct.TYPE_27__* %79)
  br label %81

81:                                               ; preds = %78, %71, %66, %58, %57, %41, %37, %33, %24, %20, %16, %13
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %88, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %81
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %100, %105
  br label %107

107:                                              ; preds = %95, %81
  %108 = phi i1 [ false, %81 ], [ %106, %95 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @lua_assert(i32 %109)
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  store i64 %115, i64* %119, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %121 = call i32 @leavelevel(%struct.TYPE_27__* %120)
  ret void
}

declare dso_local i32 @enterlevel(%struct.TYPE_27__*) #1

declare dso_local i32 @luaX_next(%struct.TYPE_27__*) #1

declare dso_local i32 @ifstat(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @whilestat(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @block(%struct.TYPE_27__*) #1

declare dso_local i32 @check_match(%struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @forstat(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @repeatstat(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @funcstat(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @testnext(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @localfunc(%struct.TYPE_27__*) #1

declare dso_local i32 @localstat(%struct.TYPE_27__*) #1

declare dso_local i32 @labelstat(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @str_checkname(%struct.TYPE_27__*) #1

declare dso_local i32 @retstat(%struct.TYPE_27__*) #1

declare dso_local i32 @gotostat(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @luaK_jump(%struct.TYPE_24__*) #1

declare dso_local i32 @exprstat(%struct.TYPE_27__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @leavelevel(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
