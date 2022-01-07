; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_alsa.c_alsa_device_list_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_alsa.c_alsa_device_list_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.string_list_elem_attr = type { i64 }
%struct.string_list = type opaque

@.str = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"IOID\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DESC\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @alsa_device_list_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alsa_device_list_new(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %union.string_list_elem_attr, align 8
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %11 = call i8* (...) @string_list_new()
  %12 = bitcast i8* %11 to %struct.string_list*
  store %struct.string_list* %12, %struct.string_list** %7, align 8
  %13 = load %struct.string_list*, %struct.string_list** %7, align 8
  %14 = icmp ne %struct.string_list* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %80

16:                                               ; preds = %1
  %17 = bitcast %union.string_list_elem_attr* %6 to i64*
  store i64 0, i64* %17, align 8
  %18 = call i64 @snd_device_name_hint(i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8*** %4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %76

21:                                               ; preds = %16
  %22 = load i8**, i8*** %4, align 8
  store i8** %22, i8*** %5, align 8
  br label %23

23:                                               ; preds = %68, %21
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %71

27:                                               ; preds = %23
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @snd_device_name_get_hint(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %8, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @snd_device_name_get_hint(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %33, i8** %9, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @snd_device_name_get_hint(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @string_is_equal(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39, %27
  %44 = load %struct.string_list*, %struct.string_list** %7, align 8
  %45 = bitcast %struct.string_list* %44 to i8*
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %6, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @string_list_append(i8* %45, i8* %46, i64 %48)
  br label %50

50:                                               ; preds = %43, %39
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @free(i8* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i8*, i8** %9, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @free(i8* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i8*, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @free(i8* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %5, align 8
  br label %23

71:                                               ; preds = %23
  %72 = load i8**, i8*** %4, align 8
  %73 = call i32 @snd_device_name_free_hint(i8** %72)
  %74 = load %struct.string_list*, %struct.string_list** %7, align 8
  %75 = bitcast %struct.string_list* %74 to i8*
  store i8* %75, i8** %2, align 8
  br label %80

76:                                               ; preds = %20
  %77 = load %struct.string_list*, %struct.string_list** %7, align 8
  %78 = bitcast %struct.string_list* %77 to i8*
  %79 = call i32 @string_list_free(i8* %78)
  store i8* null, i8** %2, align 8
  br label %80

80:                                               ; preds = %76, %71, %15
  %81 = load i8*, i8** %2, align 8
  ret i8* %81
}

declare dso_local i8* @string_list_new(...) #1

declare dso_local i64 @snd_device_name_hint(i32, i8*, i8***) #1

declare dso_local i8* @snd_device_name_get_hint(i8*, i8*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @string_list_append(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @snd_device_name_free_hint(i8**) #1

declare dso_local i32 @string_list_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
