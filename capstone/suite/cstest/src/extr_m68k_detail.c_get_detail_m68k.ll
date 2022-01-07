; ModuleID = '/home/carl/AnghaBench/capstone/suite/cstest/src/extr_m68k_detail.c_get_detail_m68k.c'
source_filename = "/home/carl/AnghaBench/capstone/suite/cstest/src/extr_m68k_detail.c_get_detail_m68k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i8, i8, %struct.TYPE_8__, i64, i32, i64 }
%struct.TYPE_8__ = type { i8, i8, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c" ; op_count: %u\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c" ; groups_count: %u\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c" ; operands[%u].type: REG = %s\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c" ; operands[%u].type: IMM = 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c" ; operands[%u].type: MEM\00", align 1
@M68K_REG_INVALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c" ; operands[%u].mem.base: REG = %s\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c" ; operands[%u].mem.index: REG = %s\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c" ; operands[%u].mem.index: size = %c\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c" ; operands[%u].mem.disp: 0x%x\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c" ; operands[%u].mem.scale: %d\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c" ; address mode: %s\00", align 1
@s_addressing_modes = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [32 x i8] c" ; operands[%u].type: FP_SINGLE\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c" ; operands[%u].simm: %f\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c" ; operands[%u].type: FP_DOUBLE\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c" ; operands[%u].dimm: %lf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_detail_m68k(i32* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %13 = call i64 @malloc(i32 1)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %16, align 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = icmp eq %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i8*, i8** %11, align 8
  store i8* %22, i8** %4, align 8
  br label %191

23:                                               ; preds = %3
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %9, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %8, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %23
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @print_read_write_regs(i8* %39, %struct.TYPE_12__* %40, i32* %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %186, %38
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %189

53:                                               ; preds = %47
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 %58
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %12, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  switch i32 %63, label %64 [
    i32 128, label %65
    i32 130, label %75
    i32 129, label %82
    i32 131, label %167
    i32 132, label %176
  ]

64:                                               ; preds = %53
  br label %185

65:                                               ; preds = %53
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call signext i8 @cs_reg_name(i32 %68, i32 %71)
  %73 = sext i8 %72 to i32
  %74 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %73)
  br label %185

75:                                               ; preds = %53
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %80)
  br label %185

82:                                               ; preds = %53
  %83 = load i32, i32* %10, align 4
  %84 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @M68K_REG_INVALID, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %82
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call signext i8 @cs_reg_name(i32 %94, i32 %98)
  %100 = sext i8 %99 to i32
  %101 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %92, i32 %100)
  br label %102

102:                                              ; preds = %91, %82
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @M68K_REG_INVALID, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %102
  %110 = load i32, i32* %10, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call signext i8 @cs_reg_name(i32 %112, i32 %116)
  %118 = sext i8 %117 to i32
  %119 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %110, i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 108, i32 119
  %128 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %120, i32 %127)
  br label %129

129:                                              ; preds = %109, %102
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i8, i8* %132, align 4
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %129
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i8, i8* %140, align 4
  %142 = sext i8 %141 to i32
  %143 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %137, i32 %142)
  br label %144

144:                                              ; preds = %136, %129
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %152, i32 %157)
  br label %159

159:                                              ; preds = %151, %144
  %160 = load i32*, i32** @s_addressing_modes, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %165)
  br label %185

167:                                              ; preds = %53
  %168 = load i32, i32* %10, align 4
  %169 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i8, i8* %172, align 8
  %174 = sext i8 %173 to i32
  %175 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %170, i32 %174)
  br label %185

176:                                              ; preds = %53
  %177 = load i32, i32* %10, align 4
  %178 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = call i32 (i8**, i8*, i32, ...) @add_str(i8** %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %179, i32 %183)
  br label %185

185:                                              ; preds = %176, %167, %159, %75, %65, %64
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %47

189:                                              ; preds = %47
  %190 = load i8*, i8** %11, align 8
  store i8* %190, i8** %4, align 8
  br label %191

191:                                              ; preds = %189, %21
  %192 = load i8*, i8** %4, align 8
  ret i8* %192
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @add_str(i8**, i8*, i32, ...) #1

declare dso_local i32 @print_read_write_regs(i8*, %struct.TYPE_12__*, i32*) #1

declare dso_local signext i8 @cs_reg_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
