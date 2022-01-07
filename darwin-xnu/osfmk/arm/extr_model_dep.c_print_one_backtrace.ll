; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_model_dep.c_print_one_backtrace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_model_dep.c_print_one_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MIN_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@FP_ALIGNMENT_MASK = common dso_local global i32 0, align 4
@VM_MAX_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@FP_LR_OFFSET = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@FP_LR_OFFSET64 = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s\09  Could not read LR from frame at 0x%016llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s\09  Could not read LR from frame at 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s\09  Could not read FP from frame at 0x%016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"%s\09  Could not read FP from frame at 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%s\09  lr: 0x%016llx  fp: 0x%016llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s\09  lr: 0x%08x  fp: 0x%08x\0A\00", align 1
@FP_MAX_NUM_TO_EVALUATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i64)* @print_one_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_one_backtrace(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @VM_MIN_KERNEL_ADDRESS, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* @TRUE, align 8
  store i64 %20, i64* %14, align 8
  br label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %14, align 8
  br label %23

23:                                               ; preds = %21, %19
  br label %24

24:                                               ; preds = %203, %23
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @FP_ALIGNMENT_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %24
  br label %205

33:                                               ; preds = %27
  %34 = load i64, i64* %14, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @VM_MIN_KERNEL_ADDRESS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @VM_MAX_KERNEL_ADDRESS, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %36
  br label %205

45:                                               ; preds = %40, %33
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @VM_MIN_KERNEL_ADDRESS, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %205

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @FP_LR_OFFSET, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %12, align 4
  %58 = xor i32 %56, %57
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %53
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @FP_LR_OFFSET, align 4
  %66 = add nsw i32 %64, %65
  %67 = call i64 @pmap_find_phys(i32 %63, i32 %66)
  store i64 %67, i64* %13, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @FP_LR_OFFSET64, align 4
  br label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @FP_LR_OFFSET, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = add nsw i32 %68, %76
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %75, %53
  %79 = load i64, i64* %13, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %78
  %82 = load i64, i64* %8, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load i64, i64* %13, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* @PAGE_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @FP_LR_OFFSET64, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* @PAGE_MASK, align 4
  %93 = and i32 %91, %92
  %94 = or i32 %88, %93
  %95 = call i32 @ml_phys_read_double_64(i32 %94)
  store i32 %95, i32* %10, align 4
  br label %108

96:                                               ; preds = %81
  %97 = load i64, i64* %13, align 8
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* @PAGE_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @FP_LR_OFFSET, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* @PAGE_MASK, align 4
  %105 = and i32 %103, %104
  %106 = or i32 %100, %105
  %107 = call i32 @ml_phys_read_word(i32 %106)
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %96, %84
  br label %125

109:                                              ; preds = %78
  %110 = load i64, i64* %8, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @FP_LR_OFFSET64, align 4
  %116 = add nsw i32 %114, %115
  %117 = call i32 (i8*, i8*, i32, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %113, i32 %116)
  br label %124

118:                                              ; preds = %109
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @FP_LR_OFFSET, align 4
  %122 = add nsw i32 %120, %121
  %123 = call i32 (i8*, i8*, i32, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %119, i32 %122)
  br label %124

124:                                              ; preds = %118, %112
  br label %205

125:                                              ; preds = %108
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = xor i32 %126, %127
  %129 = load i32, i32* @PAGE_SHIFT, align 4
  %130 = ashr i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i64 @pmap_find_phys(i32 %133, i32 %134)
  store i64 %135, i64* %13, align 8
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %132, %125
  %138 = load i64, i64* %13, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %164

140:                                              ; preds = %137
  %141 = load i64, i64* %8, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %140
  %144 = load i64, i64* %13, align 8
  %145 = trunc i64 %144 to i32
  %146 = load i32, i32* @PAGE_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @PAGE_MASK, align 4
  %150 = and i32 %148, %149
  %151 = or i32 %147, %150
  %152 = call i32 @ml_phys_read_double_64(i32 %151)
  store i32 %152, i32* %11, align 4
  br label %163

153:                                              ; preds = %140
  %154 = load i64, i64* %13, align 8
  %155 = trunc i64 %154 to i32
  %156 = load i32, i32* @PAGE_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @PAGE_MASK, align 4
  %160 = and i32 %158, %159
  %161 = or i32 %157, %160
  %162 = call i32 @ml_phys_read_word(i32 %161)
  store i32 %162, i32* %11, align 4
  br label %163

163:                                              ; preds = %153, %143
  br label %176

164:                                              ; preds = %137
  %165 = load i64, i64* %8, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i8*, i8** %7, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i32 (i8*, i8*, i32, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %168, i32 %169)
  br label %175

171:                                              ; preds = %164
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* %11, align 4
  %174 = call i32 (i8*, i8*, i32, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %172, i32 %173)
  br label %175

175:                                              ; preds = %171, %167
  br label %205

176:                                              ; preds = %163
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %176
  %180 = load i64, i64* %8, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %11, align 4
  %186 = call i32 (i8*, i8*, i32, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %183, i32 %184, i32 %185)
  br label %192

187:                                              ; preds = %179
  %188 = load i8*, i8** %7, align 8
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %11, align 4
  %191 = call i32 (i8*, i8*, i32, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %188, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %187, %182
  br label %193

193:                                              ; preds = %192, %176
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* @FP_MAX_NUM_TO_EVALUATE, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %200, %201
  br label %203

203:                                              ; preds = %199, %194
  %204 = phi i1 [ false, %194 ], [ %202, %199 ]
  br i1 %204, label %24, label %205

205:                                              ; preds = %203, %175, %124, %52, %44, %32
  ret void
}

declare dso_local i64 @pmap_find_phys(i32, i32) #1

declare dso_local i32 @ml_phys_read_double_64(i32) #1

declare dso_local i32 @ml_phys_read_word(i32) #1

declare dso_local i32 @paniclog_append_noflush(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
