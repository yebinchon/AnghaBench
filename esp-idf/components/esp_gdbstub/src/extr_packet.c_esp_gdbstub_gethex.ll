; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_gdbstub/src/extr_packet.c_esp_gdbstub_gethex.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_gdbstub/src/extr_packet.c_esp_gdbstub_gethex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GDBSTUB_ST_ENDPACKET = common dso_local global i32 0, align 4
@GDBSTUB_ST_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_gdbstub_gethex(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sdiv i32 %10, 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 64, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %103, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %106

20:                                               ; preds = %16
  %21 = load i8**, i8*** %4, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %9, align 1
  %24 = load i8**, i8*** %4, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %24, align 8
  %27 = load i8, i8* %9, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sge i32 %28, 48
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load i8, i8* %9, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sle i32 %32, 57
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, 4
  store i32 %36, i32* %8, align 4
  %37 = load i8, i8* %9, align 1
  %38 = sext i8 %37 to i32
  %39 = sub nsw i32 %38, 48
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %102

42:                                               ; preds = %30, %20
  %43 = load i8, i8* %9, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sge i32 %44, 65
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i8, i8* %9, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sle i32 %48, 70
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 %51, 4
  store i32 %52, i32* %8, align 4
  %53 = load i8, i8* %9, align 1
  %54 = sext i8 %53 to i32
  %55 = sub nsw i32 %54, 65
  %56 = add nsw i32 %55, 10
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %101

59:                                               ; preds = %46, %42
  %60 = load i8, i8* %9, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sge i32 %61, 97
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i8, i8* %9, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sle i32 %65, 102
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = shl i32 %68, 4
  store i32 %69, i32* %8, align 4
  %70 = load i8, i8* %9, align 1
  %71 = sext i8 %70 to i32
  %72 = sub nsw i32 %71, 97
  %73 = add nsw i32 %72, 10
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %100

76:                                               ; preds = %63, %59
  %77 = load i8, i8* %9, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 35
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i8**, i8*** %4, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 -1
  store i8* %86, i8** %84, align 8
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %108

88:                                               ; preds = %80
  %89 = load i32, i32* @GDBSTUB_ST_ENDPACKET, align 4
  store i32 %89, i32* %3, align 4
  br label %108

90:                                               ; preds = %76
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i8**, i8*** %4, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 -1
  store i8* %96, i8** %94, align 8
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %108

98:                                               ; preds = %90
  %99 = load i32, i32* @GDBSTUB_ST_ERR, align 4
  store i32 %99, i32* %3, align 4
  br label %108

100:                                              ; preds = %67
  br label %101

101:                                              ; preds = %100, %50
  br label %102

102:                                              ; preds = %101, %34
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %16

106:                                              ; preds = %16
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %98, %93, %88, %83
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
