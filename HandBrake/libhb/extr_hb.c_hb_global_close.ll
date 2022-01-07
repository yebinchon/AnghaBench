; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_global_close.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_global_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_global_close() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i8*, align 8
  %5 = call i32 (...) @hb_presets_free()
  %6 = call i8* (...) @hb_get_temporary_directory()
  store i8* %6, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = call i32* @opendir(i8* %7)
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %40

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %25, %24, %11
  %13 = load i32*, i32** %2, align 8
  %14 = call %struct.dirent* @readdir(i32* %13)
  store %struct.dirent* %14, %struct.dirent** %3, align 8
  %15 = icmp ne %struct.dirent* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.dirent*, %struct.dirent** %3, align 8
  %18 = getelementptr inbounds %struct.dirent, %struct.dirent* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 46
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %12

25:                                               ; preds = %16
  %26 = load i8*, i8** %1, align 8
  %27 = load %struct.dirent*, %struct.dirent** %3, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %29)
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @unlink(i8* %31)
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @free(i8* %33)
  br label %12

35:                                               ; preds = %12
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @closedir(i32* %36)
  %38 = load i8*, i8** %1, align 8
  %39 = call i32 @rmdir(i8* %38)
  br label %40

40:                                               ; preds = %35, %0
  %41 = load i8*, i8** %1, align 8
  %42 = call i32 @free(i8* %41)
  ret void
}

declare dso_local i32 @hb_presets_free(...) #1

declare dso_local i8* @hb_get_temporary_directory(...) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i8* @hb_strdup_printf(i8*, i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
