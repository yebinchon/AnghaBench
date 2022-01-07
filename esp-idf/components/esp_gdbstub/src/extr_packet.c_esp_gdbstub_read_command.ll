; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_gdbstub/src/extr_packet.c_esp_gdbstub_read_command.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_gdbstub/src/extr_packet.c_esp_gdbstub_read_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_cmd = common dso_local global i8* null, align 8
@GDBSTUB_CMD_BUFLEN = common dso_local global i32 0, align 4
@GDBSTUB_ST_ERR = common dso_local global i32 0, align 4
@GDBSTUB_ST_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_gdbstub_read_command(i8** %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8 0, i8* %7, align 1
  store i32 0, i32* %9, align 4
  %12 = call zeroext i8 (...) @esp_gdbstub_getchar()
  store i8 %12, i8* %6, align 1
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 36
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %93

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %40, %69
  %21 = call zeroext i8 (...) @esp_gdbstub_getchar()
  store i8 %21, i8* %6, align 1
  %22 = load i8, i8* %6, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 35
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** @s_cmd, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8 0, i8* %29, align 1
  br label %70

30:                                               ; preds = %20
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %7, align 1
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %7, align 1
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 36
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i8 0, i8* %7, align 1
  store i32 0, i32* %9, align 4
  br label %20

41:                                               ; preds = %30
  %42 = load i8, i8* %6, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 125
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = call zeroext i8 (...) @esp_gdbstub_getchar()
  store i8 %46, i8* %6, align 1
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %7, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %7, align 1
  %53 = load i8, i8* %6, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %54, 32
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %6, align 1
  br label %57

57:                                               ; preds = %45, %41
  %58 = load i8, i8* %6, align 1
  %59 = load i8*, i8** @s_cmd, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8 %58, i8* %63, align 1
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @GDBSTUB_CMD_BUFLEN, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @GDBSTUB_ST_ERR, align 4
  store i32 %68, i32* %3, align 4
  br label %93

69:                                               ; preds = %57
  br label %20

70:                                               ; preds = %25
  %71 = call zeroext i8 (...) @esp_gdbstub_getchar()
  %72 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %71, i8* %72, align 1
  %73 = call zeroext i8 (...) @esp_gdbstub_getchar()
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %73, i8* %74, align 1
  %75 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8* %75, i8** %10, align 8
  %76 = call zeroext i8 @esp_gdbstub_gethex(i8** %10, i32 8)
  store i8 %76, i8* %11, align 1
  %77 = load i8, i8* %11, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %7, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = call i32 @esp_gdbstub_putchar(i8 signext 45)
  %84 = load i32, i32* @GDBSTUB_ST_ERR, align 4
  store i32 %84, i32* %3, align 4
  br label %93

85:                                               ; preds = %70
  %86 = call i32 @esp_gdbstub_putchar(i8 signext 43)
  %87 = load i8*, i8** @s_cmd, align 8
  %88 = load i8**, i8*** %4, align 8
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64*, i64** %5, align 8
  store i64 %90, i64* %91, align 8
  %92 = load i32, i32* @GDBSTUB_ST_OK, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %85, %82, %67, %16
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local zeroext i8 @esp_gdbstub_getchar(...) #1

declare dso_local zeroext i8 @esp_gdbstub_gethex(i8**, i32) #1

declare dso_local i32 @esp_gdbstub_putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
