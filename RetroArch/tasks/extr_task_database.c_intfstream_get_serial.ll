; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_intfstream_get_serial.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_intfstream_get_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%s '%s'\0A\00", align 1
@MSG_FOUND_DISK_LABEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"psp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ps1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @intfstream_get_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intfstream_get_serial(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @detect_system(i32* %7, i8** %6)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @detect_serial_ascii_game(i32* %11, i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i32, i32* @MSG_FOUND_DISK_LABEL, align 4
  %17 = call i32 @msg_hash_to_str(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  store i32 0, i32* %3, align 4
  br label %70

20:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %70

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @string_is_equal(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @detect_psp_game(i32* %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %70

31:                                               ; preds = %25
  %32 = load i32, i32* @MSG_FOUND_DISK_LABEL, align 4
  %33 = call i32 @msg_hash_to_str(i32 %32)
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %34)
  br label %69

36:                                               ; preds = %21
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @string_is_equal(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @detect_ps1_game(i32* %41, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %70

46:                                               ; preds = %40
  %47 = load i32, i32* @MSG_FOUND_DISK_LABEL, align 4
  %48 = call i32 @msg_hash_to_str(i32 %47)
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %48, i8* %49)
  br label %68

51:                                               ; preds = %36
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @string_is_equal(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i32*, i32** %4, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 @detect_gc_game(i32* %56, i8* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %70

61:                                               ; preds = %55
  %62 = load i32, i32* @MSG_FOUND_DISK_LABEL, align 4
  %63 = call i32 @msg_hash_to_str(i32 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %63, i8* %64)
  br label %67

66:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %70

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %68, %31
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %66, %60, %45, %30, %20, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @detect_system(i32*, i8**) #1

declare dso_local i64 @detect_serial_ascii_game(i32*, i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i8*) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i64 @detect_psp_game(i32*, i8*) #1

declare dso_local i64 @detect_ps1_game(i32*, i8*) #1

declare dso_local i64 @detect_gc_game(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
