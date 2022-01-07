; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_denoise.c_hqdn3d_denoise_spatial.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_denoise.c_hqdn3d_denoise_spatial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i16*, i16*, i32, i32, i16*, i16*)* @hqdn3d_denoise_spatial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hqdn3d_denoise_spatial(i8* %0, i8* %1, i16* %2, i16* %3, i32 %4, i32 %5, i16* %6, i16* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16*, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i16* %2, i16** %11, align 8
  store i16* %3, i16** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i16* %6, i16** %15, align 8
  store i16* %7, i16** %16, align 8
  %21 = load i16*, i16** %15, align 8
  %22 = getelementptr inbounds i16, i16* %21, i64 4096
  store i16* %22, i16** %15, align 8
  %23 = load i16*, i16** %16, align 8
  %24 = getelementptr inbounds i16, i16* %23, i64 4096
  store i16* %24, i16** %16, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 8
  store i32 %29, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %72, %8
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %30
  %35 = load i32, i32* %19, align 4
  %36 = trunc i32 %35 to i16
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 8
  %44 = load i16*, i16** %15, align 8
  %45 = call i32 @hqdn3d_lowpass_mul(i16 zeroext %36, i32 %43, i16* %44)
  store i32 %45, i32* %19, align 4
  store i32 %45, i32* %20, align 4
  %46 = trunc i32 %45 to i16
  %47 = load i16*, i16** %11, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i16, i16* %47, i64 %49
  store i16 %46, i16* %50, align 2
  %51 = load i16*, i16** %12, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i16, i16* %51, i64 %53
  %55 = load i16, i16* %54, align 2
  %56 = load i32, i32* %20, align 4
  %57 = load i16*, i16** %16, align 8
  %58 = call i32 @hqdn3d_lowpass_mul(i16 zeroext %55, i32 %56, i16* %57)
  store i32 %58, i32* %20, align 4
  %59 = trunc i32 %58 to i16
  %60 = load i16*, i16** %12, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16, i16* %60, i64 %62
  store i16 %59, i16* %63, align 2
  %64 = load i32, i32* %20, align 4
  %65 = add i32 %64, 127
  %66 = lshr i32 %65, 8
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  br label %72

72:                                               ; preds = %34
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %17, align 4
  br label %30

75:                                               ; preds = %30
  store i32 1, i32* %18, align 4
  br label %76

76:                                               ; preds = %188, %75
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %191

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %9, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i8*, i8** %10, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %10, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load i16*, i16** %12, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i16, i16* %90, i64 %91
  store i16* %92, i16** %12, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl i32 %96, 8
  store i32 %97, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %98

98:                                               ; preds = %150, %80
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %100, 1
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %153

103:                                              ; preds = %98
  %104 = load i16*, i16** %11, align 8
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i16, i16* %104, i64 %106
  %108 = load i16, i16* %107, align 2
  %109 = load i32, i32* %19, align 4
  %110 = load i16*, i16** %15, align 8
  %111 = call i32 @hqdn3d_lowpass_mul(i16 zeroext %108, i32 %109, i16* %110)
  store i32 %111, i32* %20, align 4
  %112 = trunc i32 %111 to i16
  %113 = load i16*, i16** %11, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16, i16* %113, i64 %115
  store i16 %112, i16* %116, align 2
  %117 = load i32, i32* %19, align 4
  %118 = trunc i32 %117 to i16
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = shl i32 %125, 8
  %127 = load i16*, i16** %15, align 8
  %128 = call i32 @hqdn3d_lowpass_mul(i16 zeroext %118, i32 %126, i16* %127)
  store i32 %128, i32* %19, align 4
  %129 = load i16*, i16** %12, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i16, i16* %129, i64 %131
  %133 = load i16, i16* %132, align 2
  %134 = load i32, i32* %20, align 4
  %135 = load i16*, i16** %16, align 8
  %136 = call i32 @hqdn3d_lowpass_mul(i16 zeroext %133, i32 %134, i16* %135)
  store i32 %136, i32* %20, align 4
  %137 = trunc i32 %136 to i16
  %138 = load i16*, i16** %12, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i16, i16* %138, i64 %140
  store i16 %137, i16* %141, align 2
  %142 = load i32, i32* %20, align 4
  %143 = add i32 %142, 127
  %144 = lshr i32 %143, 8
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %10, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  store i8 %145, i8* %149, align 1
  br label %150

150:                                              ; preds = %103
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %17, align 4
  br label %98

153:                                              ; preds = %98
  %154 = load i16*, i16** %11, align 8
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i16, i16* %154, i64 %156
  %158 = load i16, i16* %157, align 2
  %159 = load i32, i32* %19, align 4
  %160 = load i16*, i16** %15, align 8
  %161 = call i32 @hqdn3d_lowpass_mul(i16 zeroext %158, i32 %159, i16* %160)
  store i32 %161, i32* %20, align 4
  %162 = trunc i32 %161 to i16
  %163 = load i16*, i16** %11, align 8
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i16, i16* %163, i64 %165
  store i16 %162, i16* %166, align 2
  %167 = load i16*, i16** %12, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i16, i16* %167, i64 %169
  %171 = load i16, i16* %170, align 2
  %172 = load i32, i32* %20, align 4
  %173 = load i16*, i16** %16, align 8
  %174 = call i32 @hqdn3d_lowpass_mul(i16 zeroext %171, i32 %172, i16* %173)
  store i32 %174, i32* %20, align 4
  %175 = trunc i32 %174 to i16
  %176 = load i16*, i16** %12, align 8
  %177 = load i32, i32* %17, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i16, i16* %176, i64 %178
  store i16 %175, i16* %179, align 2
  %180 = load i32, i32* %20, align 4
  %181 = add i32 %180, 127
  %182 = lshr i32 %181, 8
  %183 = trunc i32 %182 to i8
  %184 = load i8*, i8** %10, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  store i8 %183, i8* %187, align 1
  br label %188

188:                                              ; preds = %153
  %189 = load i32, i32* %18, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %18, align 4
  br label %76

191:                                              ; preds = %76
  ret void
}

declare dso_local i32 @hqdn3d_lowpass_mul(i16 zeroext, i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
