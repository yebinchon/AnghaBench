; ModuleID = '/home/carl/AnghaBench/RetroArch/memory/ngc/extr_ssaram.c_ARAMPut.c'
source_filename = "/home/carl/AnghaBench/RetroArch/memory/ngc/extr_ssaram.c_ARAMPut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aramfix = common dso_local global i64 0, align 8
@ARAM_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ARAMPut(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i32
  %15 = and i32 %14, 31
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %67

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = and i32 %19, -32
  store i32 %20, i32* %7, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = and i32 %22, 31
  %24 = sub nsw i32 32, %23
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = ptrtoint i8* %25 to i32
  %27 = and i32 %26, 31
  store i32 %27, i32* %8, align 4
  %28 = load i64, i64* @aramfix, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @ARAMFetch(i64 %28, i8* %31, i32 32)
  %33 = load i64, i64* @aramfix, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @memcpy(i64 %36, i8* %37, i32 %38)
  %40 = load i64, i64* @aramfix, align 8
  %41 = call i32 @DCFlushRange(i64 %40, i32 32)
  %42 = load i32, i32* @ARAM_WRITE, align 4
  %43 = load i64, i64* @aramfix, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i8*, i8** %5, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = and i32 %46, -32
  %48 = call i32 @AR_StartDMA(i32 %42, i32 %44, i32 %47, i32 32)
  br label %49

49:                                               ; preds = %52, %17
  %50 = call i64 (...) @AR_GetDMAStatus()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %49

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %4, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = and i32 %62, -32
  %64 = add nsw i32 %63, 32
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %5, align 8
  br label %67

67:                                               ; preds = %53, %3
  %68 = load i32, i32* %6, align 4
  %69 = ashr i32 %68, 11
  store i32 %69, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %98, %67
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %70
  %75 = load i64, i64* @aramfix, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = call i32 @memcpy(i64 %75, i8* %79, i32 2048)
  %81 = load i64, i64* @aramfix, align 8
  %82 = call i32 @DCFlushRange(i64 %81, i32 2048)
  %83 = load i32, i32* @ARAM_WRITE, align 4
  %84 = load i64, i64* @aramfix, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i8*, i8** %5, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32 @AR_StartDMA(i32 %83, i32 %85, i32 %89, i32 2048)
  br label %91

91:                                               ; preds = %94, %74
  %92 = call i64 (...) @AR_GetDMAStatus()
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %91

95:                                               ; preds = %91
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 2048
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %70

101:                                              ; preds = %70
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, 2047
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %174

106:                                              ; preds = %101
  %107 = load i32, i32* %6, align 4
  %108 = and i32 %107, 31
  store i32 %108, i32* %11, align 4
  %109 = load i64, i64* @aramfix, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, -32
  %116 = call i32 @memcpy(i64 %109, i8* %113, i32 %115)
  %117 = load i64, i64* @aramfix, align 8
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, -32
  %120 = call i32 @DCFlushRange(i64 %117, i32 %119)
  %121 = load i32, i32* @ARAM_WRITE, align 4
  %122 = load i64, i64* @aramfix, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i8*, i8** %5, align 8
  %125 = ptrtoint i8* %124 to i32
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %6, align 4
  %129 = and i32 %128, -32
  %130 = call i32 @AR_StartDMA(i32 %121, i32 %123, i32 %127, i32 %129)
  br label %131

131:                                              ; preds = %134, %106
  %132 = call i64 (...) @AR_GetDMAStatus()
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %131

135:                                              ; preds = %131
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %173

138:                                              ; preds = %135
  %139 = load i32, i32* %6, align 4
  %140 = and i32 %139, -32
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %6, align 4
  %144 = and i32 %143, 31
  store i32 %144, i32* %8, align 4
  %145 = load i64, i64* @aramfix, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = call i32 @ARAMFetch(i64 %145, i8* %149, i32 32)
  %151 = load i64, i64* @aramfix, align 8
  %152 = load i8*, i8** %4, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @memcpy(i64 %151, i8* %155, i32 %156)
  %158 = load i64, i64* @aramfix, align 8
  %159 = call i32 @DCFlushRange(i64 %158, i32 32)
  %160 = load i32, i32* @ARAM_WRITE, align 4
  %161 = load i64, i64* @aramfix, align 8
  %162 = trunc i64 %161 to i32
  %163 = load i8*, i8** %5, align 8
  %164 = ptrtoint i8* %163 to i32
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %164, %165
  %167 = call i32 @AR_StartDMA(i32 %160, i32 %162, i32 %166, i32 32)
  br label %168

168:                                              ; preds = %171, %138
  %169 = call i64 (...) @AR_GetDMAStatus()
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %168

172:                                              ; preds = %168
  br label %173

173:                                              ; preds = %172, %135
  br label %174

174:                                              ; preds = %173, %101
  ret void
}

declare dso_local i32 @ARAMFetch(i64, i8*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @DCFlushRange(i64, i32) #1

declare dso_local i32 @AR_StartDMA(i32, i32, i32, i32) #1

declare dso_local i64 @AR_GetDMAStatus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
