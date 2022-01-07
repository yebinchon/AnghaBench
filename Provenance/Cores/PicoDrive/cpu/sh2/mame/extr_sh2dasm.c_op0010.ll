; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/sh2/mame/extr_sh2dasm.c_op0010.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/sh2/mame/extr_sh2dasm.c_op0010.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"MOV.B   %s,@%s\00", align 1
@regname = common dso_local global i8** null, align 8
@Rm = common dso_local global i64 0, align 8
@Rn = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"MOV.W   %s,@%s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"MOV.L   %s,@%s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"??????  $%04X\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"MOV.B   %s,@-%s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"MOV.W   %s,@-%s\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"MOV.L   %s,@-%s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"DIV0S   %s,%s\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"TST     %s,%s\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"AND     %s,%s\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"XOR     %s,%s\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"OR      %s,%s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"CMP/STR %s,%s\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"XTRCT   %s,%s\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"MULU.W  %s,%s\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"MULS.W  %s,%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @op0010 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op0010(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 15
  switch i32 %8, label %178 [
    i32 0, label %9
    i32 1, label %20
    i32 2, label %31
    i32 3, label %42
    i32 4, label %46
    i32 5, label %57
    i32 6, label %68
    i32 7, label %79
    i32 8, label %90
    i32 9, label %101
    i32 10, label %112
    i32 11, label %123
    i32 12, label %134
    i32 13, label %145
    i32 14, label %156
    i32 15, label %167
  ]

9:                                                ; preds = %3
  %10 = load i8*, i8** %4, align 8
  %11 = load i8**, i8*** @regname, align 8
  %12 = load i64, i64* @Rm, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = load i8**, i8*** @regname, align 8
  %16 = load i64, i64* @Rn, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %18)
  br label %178

20:                                               ; preds = %3
  %21 = load i8*, i8** %4, align 8
  %22 = load i8**, i8*** @regname, align 8
  %23 = load i64, i64* @Rm, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** @regname, align 8
  %27 = load i64, i64* @Rn, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %29)
  br label %178

31:                                               ; preds = %3
  %32 = load i8*, i8** %4, align 8
  %33 = load i8**, i8*** @regname, align 8
  %34 = load i64, i64* @Rm, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** @regname, align 8
  %38 = load i64, i64* @Rn, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %36, i8* %40)
  br label %178

42:                                               ; preds = %3
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  br label %178

46:                                               ; preds = %3
  %47 = load i8*, i8** %4, align 8
  %48 = load i8**, i8*** @regname, align 8
  %49 = load i64, i64* @Rm, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** @regname, align 8
  %53 = load i64, i64* @Rn, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %51, i8* %55)
  br label %178

57:                                               ; preds = %3
  %58 = load i8*, i8** %4, align 8
  %59 = load i8**, i8*** @regname, align 8
  %60 = load i64, i64* @Rm, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** @regname, align 8
  %64 = load i64, i64* @Rn, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %62, i8* %66)
  br label %178

68:                                               ; preds = %3
  %69 = load i8*, i8** %4, align 8
  %70 = load i8**, i8*** @regname, align 8
  %71 = load i64, i64* @Rm, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i8**, i8*** @regname, align 8
  %75 = load i64, i64* @Rn, align 8
  %76 = getelementptr inbounds i8*, i8** %74, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %73, i8* %77)
  br label %178

79:                                               ; preds = %3
  %80 = load i8*, i8** %4, align 8
  %81 = load i8**, i8*** @regname, align 8
  %82 = load i64, i64* @Rm, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** @regname, align 8
  %86 = load i64, i64* @Rn, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %84, i8* %88)
  br label %178

90:                                               ; preds = %3
  %91 = load i8*, i8** %4, align 8
  %92 = load i8**, i8*** @regname, align 8
  %93 = load i64, i64* @Rm, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = load i8**, i8*** @regname, align 8
  %97 = load i64, i64* @Rn, align 8
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %95, i8* %99)
  br label %178

101:                                              ; preds = %3
  %102 = load i8*, i8** %4, align 8
  %103 = load i8**, i8*** @regname, align 8
  %104 = load i64, i64* @Rm, align 8
  %105 = getelementptr inbounds i8*, i8** %103, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i8**, i8*** @regname, align 8
  %108 = load i64, i64* @Rn, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i8*, i8*, ...) @sprintf(i8* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %106, i8* %110)
  br label %178

112:                                              ; preds = %3
  %113 = load i8*, i8** %4, align 8
  %114 = load i8**, i8*** @regname, align 8
  %115 = load i64, i64* @Rm, align 8
  %116 = getelementptr inbounds i8*, i8** %114, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = load i8**, i8*** @regname, align 8
  %119 = load i64, i64* @Rn, align 8
  %120 = getelementptr inbounds i8*, i8** %118, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i8*, i8*, ...) @sprintf(i8* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %117, i8* %121)
  br label %178

123:                                              ; preds = %3
  %124 = load i8*, i8** %4, align 8
  %125 = load i8**, i8*** @regname, align 8
  %126 = load i64, i64* @Rm, align 8
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load i8**, i8*** @regname, align 8
  %130 = load i64, i64* @Rn, align 8
  %131 = getelementptr inbounds i8*, i8** %129, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (i8*, i8*, ...) @sprintf(i8* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %128, i8* %132)
  br label %178

134:                                              ; preds = %3
  %135 = load i8*, i8** %4, align 8
  %136 = load i8**, i8*** @regname, align 8
  %137 = load i64, i64* @Rm, align 8
  %138 = getelementptr inbounds i8*, i8** %136, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = load i8**, i8*** @regname, align 8
  %141 = load i64, i64* @Rn, align 8
  %142 = getelementptr inbounds i8*, i8** %140, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 (i8*, i8*, ...) @sprintf(i8* %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %139, i8* %143)
  br label %178

145:                                              ; preds = %3
  %146 = load i8*, i8** %4, align 8
  %147 = load i8**, i8*** @regname, align 8
  %148 = load i64, i64* @Rm, align 8
  %149 = getelementptr inbounds i8*, i8** %147, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = load i8**, i8*** @regname, align 8
  %152 = load i64, i64* @Rn, align 8
  %153 = getelementptr inbounds i8*, i8** %151, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (i8*, i8*, ...) @sprintf(i8* %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %150, i8* %154)
  br label %178

156:                                              ; preds = %3
  %157 = load i8*, i8** %4, align 8
  %158 = load i8**, i8*** @regname, align 8
  %159 = load i64, i64* @Rm, align 8
  %160 = getelementptr inbounds i8*, i8** %158, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = load i8**, i8*** @regname, align 8
  %163 = load i64, i64* @Rn, align 8
  %164 = getelementptr inbounds i8*, i8** %162, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 (i8*, i8*, ...) @sprintf(i8* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %161, i8* %165)
  br label %178

167:                                              ; preds = %3
  %168 = load i8*, i8** %4, align 8
  %169 = load i8**, i8*** @regname, align 8
  %170 = load i64, i64* @Rm, align 8
  %171 = getelementptr inbounds i8*, i8** %169, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = load i8**, i8*** @regname, align 8
  %174 = load i64, i64* @Rn, align 8
  %175 = getelementptr inbounds i8*, i8** %173, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (i8*, i8*, ...) @sprintf(i8* %168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %172, i8* %176)
  br label %178

178:                                              ; preds = %3, %167, %156, %145, %134, %123, %112, %101, %90, %79, %68, %57, %46, %42, %31, %20, %9
  ret i32 0
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
