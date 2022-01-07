; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_aes.c_copy_and_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_aes.c_copy_and_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @copy_and_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_and_key(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %10, %14
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %15, i32* %18, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %22, %26
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %27, i32* %30, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %34, %38
  %40 = load i8*, i8** %4, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %39, i32* %42, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %46, %50
  %52 = load i8*, i8** %4, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 %51, i32* %54, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %58, %62
  %64 = load i8*, i8** %4, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32 %63, i32* %66, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %70, %74
  %76 = load i8*, i8** %4, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  store i32 %75, i32* %78, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = bitcast i8* %79 to i32*
  %81 = getelementptr inbounds i32, i32* %80, i64 6
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = getelementptr inbounds i32, i32* %84, i64 6
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %82, %86
  %88 = load i8*, i8** %4, align 8
  %89 = bitcast i8* %88 to i32*
  %90 = getelementptr inbounds i32, i32* %89, i64 6
  store i32 %87, i32* %90, align 4
  %91 = load i8*, i8** %5, align 8
  %92 = bitcast i8* %91 to i32*
  %93 = getelementptr inbounds i32, i32* %92, i64 7
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %6, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = getelementptr inbounds i32, i32* %96, i64 7
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %94, %98
  %100 = load i8*, i8** %4, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = getelementptr inbounds i32, i32* %101, i64 7
  store i32 %99, i32* %102, align 4
  %103 = load i8*, i8** %5, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = getelementptr inbounds i32, i32* %104, i64 8
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %6, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = getelementptr inbounds i32, i32* %108, i64 8
  %110 = load i32, i32* %109, align 4
  %111 = xor i32 %106, %110
  %112 = load i8*, i8** %4, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = getelementptr inbounds i32, i32* %113, i64 8
  store i32 %111, i32* %114, align 4
  %115 = load i8*, i8** %5, align 8
  %116 = bitcast i8* %115 to i32*
  %117 = getelementptr inbounds i32, i32* %116, i64 9
  %118 = load i32, i32* %117, align 4
  %119 = load i8*, i8** %6, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = getelementptr inbounds i32, i32* %120, i64 9
  %122 = load i32, i32* %121, align 4
  %123 = xor i32 %118, %122
  %124 = load i8*, i8** %4, align 8
  %125 = bitcast i8* %124 to i32*
  %126 = getelementptr inbounds i32, i32* %125, i64 9
  store i32 %123, i32* %126, align 4
  %127 = load i8*, i8** %5, align 8
  %128 = bitcast i8* %127 to i32*
  %129 = getelementptr inbounds i32, i32* %128, i64 10
  %130 = load i32, i32* %129, align 4
  %131 = load i8*, i8** %6, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = getelementptr inbounds i32, i32* %132, i64 10
  %134 = load i32, i32* %133, align 4
  %135 = xor i32 %130, %134
  %136 = load i8*, i8** %4, align 8
  %137 = bitcast i8* %136 to i32*
  %138 = getelementptr inbounds i32, i32* %137, i64 10
  store i32 %135, i32* %138, align 4
  %139 = load i8*, i8** %5, align 8
  %140 = bitcast i8* %139 to i32*
  %141 = getelementptr inbounds i32, i32* %140, i64 11
  %142 = load i32, i32* %141, align 4
  %143 = load i8*, i8** %6, align 8
  %144 = bitcast i8* %143 to i32*
  %145 = getelementptr inbounds i32, i32* %144, i64 11
  %146 = load i32, i32* %145, align 4
  %147 = xor i32 %142, %146
  %148 = load i8*, i8** %4, align 8
  %149 = bitcast i8* %148 to i32*
  %150 = getelementptr inbounds i32, i32* %149, i64 11
  store i32 %147, i32* %150, align 4
  %151 = load i8*, i8** %5, align 8
  %152 = bitcast i8* %151 to i32*
  %153 = getelementptr inbounds i32, i32* %152, i64 12
  %154 = load i32, i32* %153, align 4
  %155 = load i8*, i8** %6, align 8
  %156 = bitcast i8* %155 to i32*
  %157 = getelementptr inbounds i32, i32* %156, i64 12
  %158 = load i32, i32* %157, align 4
  %159 = xor i32 %154, %158
  %160 = load i8*, i8** %4, align 8
  %161 = bitcast i8* %160 to i32*
  %162 = getelementptr inbounds i32, i32* %161, i64 12
  store i32 %159, i32* %162, align 4
  %163 = load i8*, i8** %5, align 8
  %164 = bitcast i8* %163 to i32*
  %165 = getelementptr inbounds i32, i32* %164, i64 13
  %166 = load i32, i32* %165, align 4
  %167 = load i8*, i8** %6, align 8
  %168 = bitcast i8* %167 to i32*
  %169 = getelementptr inbounds i32, i32* %168, i64 13
  %170 = load i32, i32* %169, align 4
  %171 = xor i32 %166, %170
  %172 = load i8*, i8** %4, align 8
  %173 = bitcast i8* %172 to i32*
  %174 = getelementptr inbounds i32, i32* %173, i64 13
  store i32 %171, i32* %174, align 4
  %175 = load i8*, i8** %5, align 8
  %176 = bitcast i8* %175 to i32*
  %177 = getelementptr inbounds i32, i32* %176, i64 14
  %178 = load i32, i32* %177, align 4
  %179 = load i8*, i8** %6, align 8
  %180 = bitcast i8* %179 to i32*
  %181 = getelementptr inbounds i32, i32* %180, i64 14
  %182 = load i32, i32* %181, align 4
  %183 = xor i32 %178, %182
  %184 = load i8*, i8** %4, align 8
  %185 = bitcast i8* %184 to i32*
  %186 = getelementptr inbounds i32, i32* %185, i64 14
  store i32 %183, i32* %186, align 4
  %187 = load i8*, i8** %5, align 8
  %188 = bitcast i8* %187 to i32*
  %189 = getelementptr inbounds i32, i32* %188, i64 15
  %190 = load i32, i32* %189, align 4
  %191 = load i8*, i8** %6, align 8
  %192 = bitcast i8* %191 to i32*
  %193 = getelementptr inbounds i32, i32* %192, i64 15
  %194 = load i32, i32* %193, align 4
  %195 = xor i32 %190, %194
  %196 = load i8*, i8** %4, align 8
  %197 = bitcast i8* %196 to i32*
  %198 = getelementptr inbounds i32, i32* %197, i64 15
  store i32 %195, i32* %198, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
