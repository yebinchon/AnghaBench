; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_error.c_YabSetError.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_error.c_YabSetError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64*, i64, i64, i64, i64, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"File not found: \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Error allocating memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Error reading file: \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Error writing file: \00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Cannot initialize \00", align 1
@.str.5 = private unnamed_addr constant [311 x i8] c"%s SH2 invalid opcode\0A\0AR0 =  %08lX\09R12 =  %08lX\0AR1 =  %08lX\09R13 =  %08lX\0AR2 =  %08lX\09R14 =  %08lX\0AR3 =  %08lX\09R15 =  %08lX\0AR4 =  %08lX\09SR =   %08lX\0AR5 =  %08lX\09GBR =  %08lX\0AR6 =  %08lX\09VBR =  %08lX\0AR7 =  %08lX\09MACH = %08lX\0AR8 =  %08lX\09MACL = %08lX\0AR9 =  %08lX\09PR =   %08lX\0AR10 = %08lX\09PC =   %08lX\0AR11 = %08lX\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Slave\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"SH2 read error\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"SH2 write error\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"SDL Error: \00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Unknown error occurred\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @YabSetError(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %183 [
    i32 137, label %8
    i32 134, label %12
    i32 136, label %15
    i32 135, label %19
    i32 138, label %23
    i32 131, label %27
    i32 130, label %169
    i32 129, label %172
    i32 132, label %175
    i32 133, label %179
    i32 128, label %182
  ]

8:                                                ; preds = %2
  %9 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @AllocAmendPrintString(i8* %9, i8* %10)
  br label %186

12:                                               ; preds = %2
  %13 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @YuiErrorMsg(i8* %13)
  br label %186

15:                                               ; preds = %2
  %16 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @AllocAmendPrintString(i8* %16, i8* %17)
  br label %186

19:                                               ; preds = %2
  %20 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @AllocAmendPrintString(i8* %20, i8* %21)
  br label %186

23:                                               ; preds = %2
  %24 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @AllocAmendPrintString(i8* %24, i8* %25)
  br label %186

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %6, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = call i32 @SH2GetRegisters(%struct.TYPE_6__* %30, %struct.TYPE_7__* %32)
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 12
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 13
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 14
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 15
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 4
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 5
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 6
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 7
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 8
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 9
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 10
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 11
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([311 x i8], [311 x i8]* @.str.5, i64 0, i64 0), i8* %40, i64 %46, i64 %52, i64 %58, i64 %64, i64 %70, i64 %76, i64 %82, i64 %88, i64 %94, i64 %99, i64 %105, i64 %109, i64 %115, i64 %119, i64 %125, i64 %129, i64 %135, i64 %139, i64 %145, i64 %149, i64 %155, i64 %159, i64 %165)
  %167 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %168 = call i32 @YuiErrorMsg(i8* %167)
  br label %186

169:                                              ; preds = %2
  %170 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %171 = call i32 @YuiErrorMsg(i8* %170)
  br label %186

172:                                              ; preds = %2
  %173 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %174 = call i32 @YuiErrorMsg(i8* %173)
  br label %186

175:                                              ; preds = %2
  %176 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %177 = load i8*, i8** %4, align 8
  %178 = call i32 @AllocAmendPrintString(i8* %176, i8* %177)
  br label %186

179:                                              ; preds = %2
  %180 = load i8*, i8** %4, align 8
  %181 = call i32 @YuiErrorMsg(i8* %180)
  br label %186

182:                                              ; preds = %2
  br label %183

183:                                              ; preds = %2, %182
  %184 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %185 = call i32 @YuiErrorMsg(i8* %184)
  br label %186

186:                                              ; preds = %183, %179, %175, %172, %169, %27, %23, %19, %15, %12, %8
  ret void
}

declare dso_local i32 @AllocAmendPrintString(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @YuiErrorMsg(i8*) #1

declare dso_local i32 @SH2GetRegisters(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
