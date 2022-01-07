; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_Read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@devbug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"HHREAD\00", align 1
@h_fp = common dso_local global i32** null, align 8
@h_iocb = common dso_local global i64 0, align 8
@h_lastop = common dso_local global i8* null, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@h_lastbyte = common dso_local global i32* null, align 8
@EOF = common dso_local global i32 0, align 4
@h_textmode = common dso_local global i64* null, align 8
@TRUE = common dso_local global i32 0, align 4
@h_wascr = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_SetN = common dso_local global i32 0, align 4
@CPU_regA = common dso_local global i64 0, align 8
@CPU_ClrN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_H_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_H_Read() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @devbug, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @Log_print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i32 (...) @Devices_GetIOCB()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  br label %138

10:                                               ; preds = %6
  %11 = load i32**, i32*** @h_fp, align 8
  %12 = load i64, i64* @h_iocb, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %136

16:                                               ; preds = %10
  %17 = load i8*, i8** @h_lastop, align 8
  %18 = load i64, i64* @h_iocb, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 114
  br i1 %22, label %23, label %50

23:                                               ; preds = %16
  %24 = load i8*, i8** @h_lastop, align 8
  %25 = load i64, i64* @h_iocb, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 119
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32**, i32*** @h_fp, align 8
  %32 = load i64, i64* @h_iocb, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @SEEK_CUR, align 4
  %36 = call i32 @fseek(i32* %34, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %30, %23
  %38 = load i32**, i32*** @h_fp, align 8
  %39 = load i64, i64* @h_iocb, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call i8* @fgetc(i32* %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load i32*, i32** @h_lastbyte, align 8
  %45 = load i64, i64* @h_iocb, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i8*, i8** @h_lastop, align 8
  %48 = load i64, i64* @h_iocb, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 114, i8* %49, align 1
  br label %50

50:                                               ; preds = %37, %16
  %51 = load i32*, i32** @h_lastbyte, align 8
  %52 = load i64, i64* @h_iocb, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @EOF, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %133

58:                                               ; preds = %50
  %59 = load i64*, i64** @h_textmode, align 8
  %60 = load i64, i64* @h_iocb, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %112

64:                                               ; preds = %58
  %65 = load i32, i32* %1, align 4
  switch i32 %65, label %106 [
    i32 13, label %66
    i32 10, label %71
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* @TRUE, align 4
  %68 = load i32*, i32** @h_wascr, align 8
  %69 = load i64, i64* @h_iocb, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %67, i32* %70, align 4
  store i32 155, i32* %1, align 4
  br label %111

71:                                               ; preds = %64
  %72 = load i32*, i32** @h_wascr, align 8
  %73 = load i64, i64* @h_iocb, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %71
  %78 = load i32**, i32*** @h_fp, align 8
  %79 = load i64, i64* @h_iocb, align 8
  %80 = getelementptr inbounds i32*, i32** %78, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = call i8* @fgetc(i32* %81)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* %1, align 4
  %85 = load i32, i32* @EOF, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %77
  %88 = load i32, i32* %1, align 4
  %89 = icmp eq i32 %88, 13
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* @TRUE, align 4
  %92 = load i32*, i32** @h_wascr, align 8
  %93 = load i64, i64* @h_iocb, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32 %91, i32* %94, align 4
  store i32 155, i32* %1, align 4
  br label %100

95:                                               ; preds = %87
  %96 = load i32, i32* @FALSE, align 4
  %97 = load i32*, i32** @h_wascr, align 8
  %98 = load i64, i64* @h_iocb, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %96, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %90
  br label %103

101:                                              ; preds = %77
  store i32 136, i32* @CPU_regY, align 4
  %102 = load i32, i32* @CPU_SetN, align 4
  br label %111

103:                                              ; preds = %100
  br label %105

104:                                              ; preds = %71
  store i32 155, i32* %1, align 4
  br label %105

105:                                              ; preds = %104, %103
  br label %111

106:                                              ; preds = %64
  %107 = load i32, i32* @FALSE, align 4
  %108 = load i32*, i32** @h_wascr, align 8
  %109 = load i64, i64* @h_iocb, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 %107, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %105, %101, %66
  br label %112

112:                                              ; preds = %111, %58
  %113 = load i32, i32* %1, align 4
  %114 = sext i32 %113 to i64
  store i64 %114, i64* @CPU_regA, align 8
  %115 = load i32**, i32*** @h_fp, align 8
  %116 = load i64, i64* @h_iocb, align 8
  %117 = getelementptr inbounds i32*, i32** %115, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = call i8* @fgetc(i32* %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load i32*, i32** @h_lastbyte, align 8
  %122 = load i64, i64* @h_iocb, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32 %120, i32* %123, align 4
  %124 = load i32**, i32*** @h_fp, align 8
  %125 = load i64, i64* @h_iocb, align 8
  %126 = getelementptr inbounds i32*, i32** %124, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = call i64 @feof(i32* %127)
  %129 = icmp ne i64 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 3, i32 1
  store i32 %131, i32* @CPU_regY, align 4
  %132 = load i32, i32* @CPU_ClrN, align 4
  br label %135

133:                                              ; preds = %50
  store i32 136, i32* @CPU_regY, align 4
  %134 = load i32, i32* @CPU_SetN, align 4
  br label %135

135:                                              ; preds = %133, %112
  br label %138

136:                                              ; preds = %10
  store i32 136, i32* @CPU_regY, align 4
  %137 = load i32, i32* @CPU_SetN, align 4
  br label %138

138:                                              ; preds = %9, %136, %135
  ret void
}

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @Devices_GetIOCB(...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i8* @fgetc(i32*) #1

declare dso_local i64 @feof(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
