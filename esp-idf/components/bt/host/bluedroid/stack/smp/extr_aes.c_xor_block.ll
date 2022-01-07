; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_aes.c_xor_block.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_aes.c_xor_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @xor_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xor_block(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to i32*
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, %8
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, %17
  store i32 %22, i32* %20, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, %44
  store i32 %49, i32* %47, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, %53
  store i32 %58, i32* %56, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %3, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %66, %62
  store i32 %67, i32* %65, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = getelementptr inbounds i32, i32* %69, i64 7
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %3, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = getelementptr inbounds i32, i32* %73, i64 7
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %75, %71
  store i32 %76, i32* %74, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = getelementptr inbounds i32, i32* %78, i64 8
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %3, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = getelementptr inbounds i32, i32* %82, i64 8
  %84 = load i32, i32* %83, align 4
  %85 = xor i32 %84, %80
  store i32 %85, i32* %83, align 4
  %86 = load i8*, i8** %4, align 8
  %87 = bitcast i8* %86 to i32*
  %88 = getelementptr inbounds i32, i32* %87, i64 9
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %3, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = getelementptr inbounds i32, i32* %91, i64 9
  %93 = load i32, i32* %92, align 4
  %94 = xor i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load i8*, i8** %4, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = getelementptr inbounds i32, i32* %96, i64 10
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %3, align 8
  %100 = bitcast i8* %99 to i32*
  %101 = getelementptr inbounds i32, i32* %100, i64 10
  %102 = load i32, i32* %101, align 4
  %103 = xor i32 %102, %98
  store i32 %103, i32* %101, align 4
  %104 = load i8*, i8** %4, align 8
  %105 = bitcast i8* %104 to i32*
  %106 = getelementptr inbounds i32, i32* %105, i64 11
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %3, align 8
  %109 = bitcast i8* %108 to i32*
  %110 = getelementptr inbounds i32, i32* %109, i64 11
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %111, %107
  store i32 %112, i32* %110, align 4
  %113 = load i8*, i8** %4, align 8
  %114 = bitcast i8* %113 to i32*
  %115 = getelementptr inbounds i32, i32* %114, i64 12
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %3, align 8
  %118 = bitcast i8* %117 to i32*
  %119 = getelementptr inbounds i32, i32* %118, i64 12
  %120 = load i32, i32* %119, align 4
  %121 = xor i32 %120, %116
  store i32 %121, i32* %119, align 4
  %122 = load i8*, i8** %4, align 8
  %123 = bitcast i8* %122 to i32*
  %124 = getelementptr inbounds i32, i32* %123, i64 13
  %125 = load i32, i32* %124, align 4
  %126 = load i8*, i8** %3, align 8
  %127 = bitcast i8* %126 to i32*
  %128 = getelementptr inbounds i32, i32* %127, i64 13
  %129 = load i32, i32* %128, align 4
  %130 = xor i32 %129, %125
  store i32 %130, i32* %128, align 4
  %131 = load i8*, i8** %4, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = getelementptr inbounds i32, i32* %132, i64 14
  %134 = load i32, i32* %133, align 4
  %135 = load i8*, i8** %3, align 8
  %136 = bitcast i8* %135 to i32*
  %137 = getelementptr inbounds i32, i32* %136, i64 14
  %138 = load i32, i32* %137, align 4
  %139 = xor i32 %138, %134
  store i32 %139, i32* %137, align 4
  %140 = load i8*, i8** %4, align 8
  %141 = bitcast i8* %140 to i32*
  %142 = getelementptr inbounds i32, i32* %141, i64 15
  %143 = load i32, i32* %142, align 4
  %144 = load i8*, i8** %3, align 8
  %145 = bitcast i8* %144 to i32*
  %146 = getelementptr inbounds i32, i32* %145, i64 15
  %147 = load i32, i32* %146, align 4
  %148 = xor i32 %147, %143
  store i32 %148, i32* %146, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
