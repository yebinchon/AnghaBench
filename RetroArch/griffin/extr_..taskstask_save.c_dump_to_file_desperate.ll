; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_save.c_dump_to_file_desperate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_save.c_dump_to_file_desperate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%Y-%m-%d-%H-%M-%S\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s/RetroArch-recovery-%u%s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Succeeded in saving RAM data to \22%s\22.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @dump_to_file_desperate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_to_file_desperate(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 1
  %15 = trunc i64 %14 to i32
  %16 = call i64 @malloc(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %11, align 8
  %21 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = call i32 @fill_pathname_application_data(i8* %20, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @free(i8* %28)
  store i32 0, i32* %4, align 4
  br label %73

30:                                               ; preds = %3
  %31 = call i32 @time(i32* %8)
  %32 = call i64 @malloc(i32 256)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @localtime(i32* %8)
  %38 = call i32 @strftime(i8* %36, i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = call i64 @malloc(i32 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @snprintf(i8* %47, i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %53, i8* %54)
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @filestream_write_file(i8* %60, i8* %61, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %30
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @free(i8* %66)
  store i32 0, i32* %4, align 4
  br label %73

68:                                               ; preds = %30
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @free(i8* %71)
  store i32 1, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %65, %27
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fill_pathname_application_data(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @filestream_write_file(i8*, i8*, i64) #1

declare dso_local i32 @RARCH_WARN(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
