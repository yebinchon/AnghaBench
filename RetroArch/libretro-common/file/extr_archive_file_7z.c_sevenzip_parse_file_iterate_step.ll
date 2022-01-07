; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file_7z.c_sevenzip_parse_file_iterate_step.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file_7z.c_sevenzip_parse_file_iterate_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.archive_extract_userdata = type { i8*, i32 }
%struct.sevenzip_context_t = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, %struct.archive_extract_userdata*, i32 (i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*)*)* @sevenzip_parse_file_iterate_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sevenzip_parse_file_iterate_step(%struct.TYPE_4__* %0, i8* %1, %struct.archive_extract_userdata* %2, i32 (i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.archive_extract_userdata*, align 8
  %9 = alloca i32 (i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sevenzip_context_t*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.archive_extract_userdata* %2, %struct.archive_extract_userdata** %8, align 8
  store i32 (i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*)* %3, i32 (i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*)** %9, align 8
  %21 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store %struct.sevenzip_context_t* null, %struct.sevenzip_context_t** %18, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 16
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %8, align 8
  %28 = call i32 @sevenzip_parse_file_iterate_step_internal(%struct.TYPE_4__* %26, i8* %24, i32** %12, i32* %16, i32* %14, i32* %15, i32* %13, i32* %17, %struct.archive_extract_userdata* %27)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %19, align 4
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %63

33:                                               ; preds = %4
  %34 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %8, align 8
  %35 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %34, i32 0, i32 0
  store i8* %24, i8** %35, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %8, align 8
  %38 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i32 (i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*)*, i32 (i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*)** %9, align 8
  %40 = icmp ne i32 (i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*)* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = load i32 (i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*)*, i32 (i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*)** %9, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %8, align 8
  %50 = call i32 %42(i8* %24, i8* %43, i32* %44, i32 %45, i32 %46, i32 %47, i32 %48, %struct.archive_extract_userdata* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %63

53:                                               ; preds = %41, %33
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.sevenzip_context_t*
  store %struct.sevenzip_context_t* %57, %struct.sevenzip_context_t** %18, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %18, align 8
  %60 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %61, %58
  store i32 %62, i32* %60, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %63

63:                                               ; preds = %53, %52, %31
  %64 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sevenzip_parse_file_iterate_step_internal(%struct.TYPE_4__*, i8*, i32**, i32*, i32*, i32*, i32*, i32*, %struct.archive_extract_userdata*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
