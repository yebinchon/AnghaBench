; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_winraw_input.c_winraw_mouse_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_winraw_input.c_winraw_mouse_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@MAX_USERS = common dso_local global i32 0, align 4
@g_mouse_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32)* @winraw_mouse_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @winraw_mouse_state(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = call %struct.TYPE_10__* (...) @config_get_ptr()
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MAX_USERS, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %127

18:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %42, %18
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @g_mouse_cnt, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %24, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %12, align 8
  br label %45

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %19

45:                                               ; preds = %34, %19
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %127

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  switch i32 %50, label %126 [
    i32 129, label %51
    i32 128, label %64
    i32 134, label %77
    i32 132, label %84
    i32 130, label %91
    i32 131, label %98
    i32 133, label %105
    i32 136, label %112
    i32 135, label %119
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  br label %62

58:                                               ; preds = %51
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i32 [ %57, %54 ], [ %61, %58 ]
  store i32 %63, i32* %5, align 4
  br label %127

64:                                               ; preds = %49
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  br label %75

71:                                               ; preds = %64
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i32 [ %70, %67 ], [ %74, %71 ]
  store i32 %76, i32* %5, align 4
  br label %127

77:                                               ; preds = %49
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 0
  store i32 %83, i32* %5, align 4
  br label %127

84:                                               ; preds = %49
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  store i32 %90, i32* %5, align 4
  br label %127

91:                                               ; preds = %49
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 1, i32 0
  store i32 %97, i32* %5, align 4
  br label %127

98:                                               ; preds = %49
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  store i32 %104, i32* %5, align 4
  br label %127

105:                                              ; preds = %49
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  store i32 %111, i32* %5, align 4
  br label %127

112:                                              ; preds = %49
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 1, i32 0
  store i32 %118, i32* %5, align 4
  br label %127

119:                                              ; preds = %49
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 1, i32 0
  store i32 %125, i32* %5, align 4
  br label %127

126:                                              ; preds = %49
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %126, %119, %112, %105, %98, %91, %84, %77, %75, %62, %48, %17
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_10__* @config_get_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
