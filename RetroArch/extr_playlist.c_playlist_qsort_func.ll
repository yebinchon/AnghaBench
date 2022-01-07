; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_playlist.c_playlist_qsort_func.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_playlist.c_playlist_qsort_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist_entry = type { i8*, i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.playlist_entry*, %struct.playlist_entry*)* @playlist_qsort_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playlist_qsort_func(%struct.playlist_entry* %0, %struct.playlist_entry* %1) #0 {
  %3 = alloca %struct.playlist_entry*, align 8
  %4 = alloca %struct.playlist_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.playlist_entry* %0, %struct.playlist_entry** %3, align 8
  store %struct.playlist_entry* %1, %struct.playlist_entry** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %11 = icmp ne %struct.playlist_entry* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %14 = icmp ne %struct.playlist_entry* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  br label %94

16:                                               ; preds = %12
  %17 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %18 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %21 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @string_is_empty(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %16
  %27 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %28 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @string_is_empty(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %94

33:                                               ; preds = %26
  %34 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %35 = call i64 @calloc(i32 %34, i32 1)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %94

40:                                               ; preds = %33
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %43 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 1
  %48 = trunc i64 %47 to i32
  %49 = call i32 @fill_short_pathname_representation(i8* %41, i8* %44, i32 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @string_is_empty(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %94

54:                                               ; preds = %40
  %55 = load i8*, i8** %7, align 8
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %54, %16
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @string_is_empty(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %56
  %61 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %62 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @string_is_empty(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %94

67:                                               ; preds = %60
  %68 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %69 = call i64 @calloc(i32 %68, i32 1)
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %8, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  br label %94

74:                                               ; preds = %67
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %77 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 1
  %82 = trunc i64 %81 to i32
  %83 = call i32 @fill_short_pathname_representation(i8* %75, i8* %78, i32 %82)
  %84 = load i8*, i8** %8, align 8
  %85 = call i64 @string_is_empty(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %94

88:                                               ; preds = %74
  %89 = load i8*, i8** %8, align 8
  store i8* %89, i8** %6, align 8
  br label %90

90:                                               ; preds = %88, %56
  %91 = load i8*, i8** %5, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @strcasecmp(i8* %91, i8* %92)
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %90, %87, %73, %66, %53, %39, %32, %15
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @free(i8* %98)
  store i8* null, i8** %7, align 8
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i8*, i8** %8, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @free(i8* %104)
  store i8* null, i8** %8, align 8
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @fill_short_pathname_representation(i8*, i8*, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
