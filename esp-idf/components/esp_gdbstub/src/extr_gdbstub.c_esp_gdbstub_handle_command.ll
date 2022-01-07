; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_gdbstub/src/extr_gdbstub.c_esp_gdbstub_handle_command.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_gdbstub/src/extr_gdbstub.c_esp_gdbstub_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@GDBSTUB_ST_ERR = common dso_local global i32 0, align 4
@GDBSTUB_ST_OK = common dso_local global i32 0, align 4
@GDBSTUB_TASK_SUPPORT_DISABLED = common dso_local global i64 0, align 8
@s_scratch = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_gdbstub_handle_command(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 103
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 @handle_g_command(i8* %15, i32 %17)
  br label %54

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 71
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @handle_G_command(i8* %26, i32 %28)
  br label %53

30:                                               ; preds = %19
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 109
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @handle_m_command(i8* %37, i32 %39)
  br label %52

41:                                               ; preds = %30
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 63
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 (...) @send_reason()
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @GDBSTUB_ST_ERR, align 4
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %25
  br label %54

54:                                               ; preds = %53, %14
  %55 = load i32, i32* @GDBSTUB_ST_OK, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @handle_g_command(i8*, i32) #1

declare dso_local i32 @handle_G_command(i8*, i32) #1

declare dso_local i32 @handle_m_command(i8*, i32) #1

declare dso_local i32 @send_reason(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
