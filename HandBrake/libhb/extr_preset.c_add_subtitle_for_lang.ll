; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_add_subtitle_for_lang.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_add_subtitle_for_lang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@VOBSUB = common dso_local global i64 0, align 8
@PGSSUB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, i32, i8*, %struct.TYPE_10__*)* @add_subtitle_for_lang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_subtitle_for_lang(i32* %0, %struct.TYPE_11__* %1, i32 %2, i8* %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %10, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @find_subtitle_track(%struct.TYPE_11__* %15, i8* %16, i32 0)
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %152, %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %154

21:                                               ; preds = %18
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %154

36:                                               ; preds = %30
  br label %140

37:                                               ; preds = %21
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call %struct.TYPE_12__* @hb_list_item(i32 %40, i32 %41)
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %14, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %88, label %47

47:                                               ; preds = %37
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VOBSUB, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PGSSUB, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %64, %58
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @hb_subtitle_can_pass(i64 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %81, %76, %69, %64, %53
  %87 = phi i1 [ true, %76 ], [ true, %69 ], [ true, %64 ], [ true, %53 ], [ %85, %81 ]
  br label %88

88:                                               ; preds = %86, %37
  %89 = phi i1 [ false, %37 ], [ %87, %86 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %93, %88
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @has_default_subtitle(i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br label %108

108:                                              ; preds = %102, %98
  %109 = phi i1 [ false, %98 ], [ %107, %102 ]
  br label %110

110:                                              ; preds = %108, %93
  %111 = phi i1 [ true, %93 ], [ %109, %108 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 1, i32* %131, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @add_subtitle(i32* %132, i32 %133, i32 %134, i32 0, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %110, %36
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 7
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %152

146:                                              ; preds = %140
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  %151 = call i32 @find_subtitle_track(%struct.TYPE_11__* %147, i8* %148, i32 %150)
  br label %152

152:                                              ; preds = %146, %145
  %153 = phi i32 [ -1, %145 ], [ %151, %146 ]
  store i32 %153, i32* %11, align 4
  br label %18

154:                                              ; preds = %35, %18
  ret void
}

declare dso_local i32 @find_subtitle_track(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @hb_list_item(i32, i32) #1

declare dso_local i32 @hb_subtitle_can_pass(i64, i32) #1

declare dso_local i32 @has_default_subtitle(i32*) #1

declare dso_local i32 @add_subtitle(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
