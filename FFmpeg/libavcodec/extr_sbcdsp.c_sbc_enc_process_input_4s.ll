; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcdsp.c_sbc_enc_process_input_4s.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcdsp.c_sbc_enc_process_input_4s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SBC_X_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32, i32)* @sbc_enc_process_input_4s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_enc_process_input_4s(i32 %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @SBC_X_BUFFER_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %42, %18
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %26, %14
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* @SBC_X_BUFFER_SIZE, align 4
  %30 = sub nsw i32 %29, 40
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, %14
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @memcpy(i32* %32, i32* %40, i32 144)
  br label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load i32, i32* @SBC_X_BUFFER_SIZE, align 4
  %47 = sub nsw i32 %46, 40
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %5
  br label %49

49:                                               ; preds = %168, %48
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %50, 8
  br i1 %51, label %52, label %176

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 8
  store i32 %54, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %164, %52
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %167

59:                                               ; preds = %55
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = mul nsw i64 %62, %14
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32* %67, i32** %12, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 14, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 2, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = call i32 @AV_RN16(i32* %76)
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 6, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 2, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = call i32 @AV_RN16(i32* %88)
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 %89, i32* %91, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 12, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %11, align 4
  %98 = mul nsw i32 2, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = call i32 @AV_RN16(i32* %100)
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %10, align 4
  %106 = mul nsw i32 8, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %11, align 4
  %110 = mul nsw i32 2, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = call i32 @AV_RN16(i32* %112)
  %114 = load i32*, i32** %12, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  store i32 %113, i32* %115, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %10, align 4
  %118 = mul nsw i32 0, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %11, align 4
  %122 = mul nsw i32 2, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = call i32 @AV_RN16(i32* %124)
  %126 = load i32*, i32** %12, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  store i32 %125, i32* %127, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %10, align 4
  %130 = mul nsw i32 4, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %11, align 4
  %134 = mul nsw i32 2, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = call i32 @AV_RN16(i32* %136)
  %138 = load i32*, i32** %12, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 5
  store i32 %137, i32* %139, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %10, align 4
  %142 = mul nsw i32 2, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %11, align 4
  %146 = mul nsw i32 2, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = call i32 @AV_RN16(i32* %148)
  %150 = load i32*, i32** %12, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 6
  store i32 %149, i32* %151, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %10, align 4
  %154 = mul nsw i32 10, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %11, align 4
  %158 = mul nsw i32 2, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = call i32 @AV_RN16(i32* %160)
  %162 = load i32*, i32** %12, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 7
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %59
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %55

167:                                              ; preds = %55
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %9, align 4
  %170 = sub nsw i32 %169, 8
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %10, align 4
  %172 = mul nsw i32 16, %171
  %173 = load i32*, i32** %7, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %7, align 8
  br label %49

176:                                              ; preds = %49
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @AV_RN16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
