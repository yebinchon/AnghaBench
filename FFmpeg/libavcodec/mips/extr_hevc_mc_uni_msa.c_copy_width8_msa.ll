; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_copy_width8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_copy_width8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @copy_width8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_width8_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 2, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %5
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @LD2(i32* %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %12, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @SD(i32 %28, i32* %29)
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %8, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @SD(i32 %35, i32* %36)
  br label %182

38:                                               ; preds = %5
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 6, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %38
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @LD4(i32* %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 4, %49
  %51 = load i32*, i32** %6, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %6, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @SD4(i32 %54, i32 %55, i32 %56, i32 %57, i32* %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 4, %61
  %63 = load i32*, i32** %8, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %8, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @LD2(i32* %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @SD(i32 %71, i32* %72)
  %74 = load i32, i32* %9, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %8, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @SD(i32 %78, i32* %79)
  br label %181

81:                                               ; preds = %38
  %82 = load i32, i32* %10, align 4
  %83 = srem i32 %82, 8
  %84 = icmp eq i32 0, %83
  br i1 %84, label %85, label %142

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = ashr i32 %86, 3
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %92, %85
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %11, align 4
  %91 = icmp ne i32 %89, 0
  br i1 %91, label %92, label %141

92:                                               ; preds = %88
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @LD4(i32* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 4, %100
  %102 = load i32*, i32** %6, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %6, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @LD4(i32* %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = mul nsw i32 4, %112
  %114 = load i32*, i32** %6, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %6, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @SD4(i32 %117, i32 %118, i32 %119, i32 %120, i32* %121, i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = mul nsw i32 4, %124
  %126 = load i32*, i32** %8, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %8, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* %19, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @SD4(i32 %129, i32 %130, i32 %131, i32 %132, i32* %133, i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = mul nsw i32 4, %136
  %138 = load i32*, i32** %8, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %8, align 8
  br label %88

141:                                              ; preds = %88
  br label %180

142:                                              ; preds = %81
  %143 = load i32, i32* %10, align 4
  %144 = srem i32 %143, 4
  %145 = icmp eq i32 0, %144
  br i1 %145, label %146, label %179

146:                                              ; preds = %142
  %147 = load i32, i32* %10, align 4
  %148 = ashr i32 %147, 2
  store i32 %148, i32* %11, align 4
  br label %149

149:                                              ; preds = %153, %146
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %11, align 4
  %152 = icmp ne i32 %150, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %149
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @LD4(i32* %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load i32, i32* %7, align 4
  %162 = mul nsw i32 4, %161
  %163 = load i32*, i32** %6, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32* %165, i32** %6, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @SD4(i32 %166, i32 %167, i32 %168, i32 %169, i32* %170, i32 %171)
  %173 = load i32, i32* %9, align 4
  %174 = mul nsw i32 4, %173
  %175 = load i32*, i32** %8, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32* %177, i32** %8, align 8
  br label %149

178:                                              ; preds = %149
  br label %179

179:                                              ; preds = %178, %142
  br label %180

180:                                              ; preds = %179, %141
  br label %181

181:                                              ; preds = %180, %41
  br label %182

182:                                              ; preds = %181, %22
  ret void
}

declare dso_local i32 @LD2(i32*, i32, i32, i32) #1

declare dso_local i32 @SD(i32, i32*) #1

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SD4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
