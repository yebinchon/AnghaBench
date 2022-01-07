; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_encode/extr_encode.c_generate_test_card.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_encode/extr_encode.c_generate_test_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, %struct.TYPE_7__*)* @generate_test_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_test_card(i8* %0, i32* %1, i32 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %11, align 8
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %23, i64 %31
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 1
  %42 = mul nsw i32 %37, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %33, i64 %43
  store i8* %44, i8** %14, align 8
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %141, %4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 2
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %144

52:                                               ; preds = %45
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %10, align 4
  %55 = mul nsw i32 2, %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %53, i64 %60
  store i8* %61, i8** %15, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 1
  %68 = mul nsw i32 %63, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %62, i64 %69
  store i8* %70, i8** %16, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 1
  %77 = mul nsw i32 %72, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %71, i64 %78
  store i8* %79, i8** %17, align 8
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %137, %52
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 2
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %140

87:                                               ; preds = %80
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %88, %89
  %91 = ashr i32 %90, 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %92, %93
  %95 = ashr i32 %94, 4
  %96 = xor i32 %91, %95
  %97 = and i32 %96, 15
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = mul nsw i32 %98, 8
  %100 = add nsw i32 128, %99
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %15, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %102, i64 %107
  store i8 %101, i8* %108, align 1
  %109 = load i8*, i8** %15, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  store i8 %101, i8* %114, align 1
  %115 = load i8*, i8** %15, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8 %101, i8* %116, align 1
  %117 = load i8*, i8** %15, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  store i8 %101, i8* %118, align 1
  %119 = load i32, i32* %18, align 4
  %120 = mul nsw i32 %119, 16
  %121 = add nsw i32 0, %120
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %16, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  store i8 %122, i8* %124, align 1
  %125 = load i32, i32* %18, align 4
  %126 = mul nsw i32 %125, 48
  %127 = add nsw i32 128, %126
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %17, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  store i8 %128, i8* %130, align 1
  %131 = load i8*, i8** %15, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  store i8* %132, i8** %15, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %16, align 8
  %135 = load i8*, i8** %17, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %17, align 8
  br label %137

137:                                              ; preds = %87
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %80

140:                                              ; preds = %80
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %45

144:                                              ; preds = %45
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %147, %150
  %152 = mul nsw i32 %151, 3
  %153 = ashr i32 %152, 1
  %154 = load i32*, i32** %6, align 8
  store i32 %153, i32* %154, align 4
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
