; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deinterlace.c_deinterlace_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deinterlace.c_deinterlace_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"parity\00", align 1
@MODE_YADIF_ENABLE = common dso_local global i32 0, align 4
@MODE_YADIF_BOB = common dso_local global i32 0, align 4
@MODE_YADIF_SPATIAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"send_field\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"send_field_nospatial\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"send_frame\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"send_frame_nospatial\00", align 1
@MODE_DECOMB_SELECTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"deint\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"tff\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"bff\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"yadif\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8**)* @deinterlace_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deinterlace_init(%struct.TYPE_6__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %12 = call %struct.TYPE_5__* @calloc(i32 1, i32 4)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %106

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  store i32 3, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @hb_dict_extract_int(i32* %8, i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @hb_dict_extract_int(i32* %9, i32* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MODE_YADIF_ENABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %106

36:                                               ; preds = %19
  %37 = call i32* (...) @hb_dict_init()
  store i32* %37, i32** %10, align 8
  %38 = call i32* (...) @hb_dict_init()
  store i32* %38, i32** %11, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @MODE_YADIF_BOB, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @MODE_YADIF_SPATIAL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32*, i32** %11, align 8
  %50 = call i32* @hb_value_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 @hb_dict_set(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %50)
  br label %56

52:                                               ; preds = %43
  %53 = load i32*, i32** %11, align 8
  %54 = call i32* @hb_value_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @hb_dict_set(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %54)
  br label %56

56:                                               ; preds = %52, %48
  br label %71

57:                                               ; preds = %36
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @MODE_YADIF_SPATIAL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32*, i32** %11, align 8
  %64 = call i32* @hb_value_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %65 = call i32 @hb_dict_set(i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %64)
  br label %70

66:                                               ; preds = %57
  %67 = load i32*, i32** %11, align 8
  %68 = call i32* @hb_value_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %69 = call i32 @hb_dict_set(i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %68)
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %56
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @MODE_DECOMB_SELECTIVE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32*, i32** %11, align 8
  %78 = call i32* @hb_value_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %79 = call i32 @hb_dict_set(i32* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %78)
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32*, i32** %11, align 8
  %85 = call i32* @hb_value_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %86 = call i32 @hb_dict_set(i32* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %85)
  br label %95

87:                                               ; preds = %80
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32*, i32** %11, align 8
  %92 = call i32* @hb_value_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %93 = call i32 @hb_dict_set(i32* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %92)
  br label %94

94:                                               ; preds = %90, %87
  br label %95

95:                                               ; preds = %94, %83
  %96 = load i32*, i32** %10, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @hb_dict_set(i32* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32* %97)
  %99 = load i32*, i32** %10, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32* %99, i32** %101, align 8
  %102 = load i8**, i8*** %5, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %95, %35, %18
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @hb_dict_extract_int(i32*, i32*, i8*) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32* @hb_value_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
