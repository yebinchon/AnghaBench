; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/GC/extr_gc_cello.c_create_objects.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/GC/extr_gc_cello.c_create_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @create_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_objects(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %40 = load i32, i32* @Int, align 4
  %41 = call i32 @new(i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @Int, align 4
  %43 = call i32 @new(i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @Int, align 4
  %45 = call i32 @new(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @Int, align 4
  %47 = call i32 @new(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @Int, align 4
  %49 = call i32 @new(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @Int, align 4
  %51 = call i32 @new(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @Int, align 4
  %53 = call i32 @new(i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @Int, align 4
  %55 = call i32 @new(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @Int, align 4
  %57 = call i32 @new(i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* @Int, align 4
  %59 = call i32 @new(i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* @Int, align 4
  %61 = call i32 @new(i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* @Int, align 4
  %63 = call i32 @new(i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* @Int, align 4
  %65 = call i32 @new(i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* @Int, align 4
  %67 = call i32 @new(i32 %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* @Int, align 4
  %69 = call i32 @new(i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* @Int, align 4
  %71 = call i32 @new(i32 %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* @Int, align 4
  %73 = call i32 @new(i32 %72)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* @Int, align 4
  %75 = call i32 @new(i32 %74)
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* @Int, align 4
  %77 = call i32 @new(i32 %76)
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* @Int, align 4
  %79 = call i32 @new(i32 %78)
  store i32 %79, i32* %22, align 4
  %80 = load i32, i32* @Int, align 4
  %81 = call i32 @new(i32 %80)
  store i32 %81, i32* %23, align 4
  %82 = load i32, i32* @Int, align 4
  %83 = call i32 @new(i32 %82)
  store i32 %83, i32* %24, align 4
  %84 = load i32, i32* @Int, align 4
  %85 = call i32 @new(i32 %84)
  store i32 %85, i32* %25, align 4
  %86 = load i32, i32* @Int, align 4
  %87 = call i32 @new(i32 %86)
  store i32 %87, i32* %26, align 4
  %88 = load i32, i32* @Int, align 4
  %89 = call i32 @new(i32 %88)
  store i32 %89, i32* %27, align 4
  %90 = load i32, i32* @Int, align 4
  %91 = call i32 @new(i32 %90)
  store i32 %91, i32* %28, align 4
  %92 = load i32, i32* @Int, align 4
  %93 = call i32 @new(i32 %92)
  store i32 %93, i32* %29, align 4
  %94 = load i32, i32* @Int, align 4
  %95 = call i32 @new(i32 %94)
  store i32 %95, i32* %30, align 4
  %96 = load i32, i32* @Int, align 4
  %97 = call i32 @new(i32 %96)
  store i32 %97, i32* %31, align 4
  %98 = load i32, i32* @Int, align 4
  %99 = call i32 @new(i32 %98)
  store i32 %99, i32* %32, align 4
  %100 = load i32, i32* @Int, align 4
  %101 = call i32 @new(i32 %100)
  store i32 %101, i32* %33, align 4
  %102 = load i32, i32* @Int, align 4
  %103 = call i32 @new(i32 %102)
  store i32 %103, i32* %34, align 4
  %104 = load i32, i32* @Int, align 4
  %105 = call i32 @new(i32 %104)
  store i32 %105, i32* %35, align 4
  %106 = load i32, i32* @Int, align 4
  %107 = call i32 @new(i32 %106)
  store i32 %107, i32* %36, align 4
  %108 = load i32, i32* @Int, align 4
  %109 = call i32 @new(i32 %108)
  store i32 %109, i32* %37, align 4
  store volatile i32 0, i32* %38, align 4
  %110 = load volatile i32, i32* %38, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %181

112:                                              ; preds = %1
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @show(i32 %113)
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @show(i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @show(i32 %117)
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @show(i32 %119)
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @show(i32 %121)
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @show(i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @show(i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @show(i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @show(i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @show(i32 %131)
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @show(i32 %133)
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @show(i32 %135)
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @show(i32 %137)
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @show(i32 %139)
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @show(i32 %141)
  %143 = load i32, i32* %18, align 4
  %144 = call i32 @show(i32 %143)
  %145 = load i32, i32* %19, align 4
  %146 = call i32 @show(i32 %145)
  %147 = load i32, i32* %20, align 4
  %148 = call i32 @show(i32 %147)
  %149 = load i32, i32* %21, align 4
  %150 = call i32 @show(i32 %149)
  %151 = load i32, i32* %22, align 4
  %152 = call i32 @show(i32 %151)
  %153 = load i32, i32* %23, align 4
  %154 = call i32 @show(i32 %153)
  %155 = load i32, i32* %24, align 4
  %156 = call i32 @show(i32 %155)
  %157 = load i32, i32* %25, align 4
  %158 = call i32 @show(i32 %157)
  %159 = load i32, i32* %26, align 4
  %160 = call i32 @show(i32 %159)
  %161 = load i32, i32* %27, align 4
  %162 = call i32 @show(i32 %161)
  %163 = load i32, i32* %28, align 4
  %164 = call i32 @show(i32 %163)
  %165 = load i32, i32* %29, align 4
  %166 = call i32 @show(i32 %165)
  %167 = load i32, i32* %30, align 4
  %168 = call i32 @show(i32 %167)
  %169 = load i32, i32* %31, align 4
  %170 = call i32 @show(i32 %169)
  %171 = load i32, i32* %32, align 4
  %172 = call i32 @show(i32 %171)
  %173 = load i32, i32* %33, align 4
  %174 = call i32 @show(i32 %173)
  %175 = load i32, i32* %34, align 4
  %176 = call i32 @show(i32 %175)
  %177 = load i32, i32* %35, align 4
  %178 = call i32 @show(i32 %177)
  %179 = load i32, i32* %37, align 4
  %180 = call i32 @show(i32 %179)
  br label %181

181:                                              ; preds = %112, %1
  %182 = load i32, i32* %2, align 4
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %195

185:                                              ; preds = %181
  store i64 0, i64* %39, align 8
  br label %186

186:                                              ; preds = %192, %185
  %187 = load i64, i64* %39, align 8
  %188 = icmp ult i64 %187, 10
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load i32, i32* %2, align 4
  %191 = add nsw i32 %190, 1
  call void @create_objects(i32 %191)
  br label %192

192:                                              ; preds = %189
  %193 = load i64, i64* %39, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %39, align 8
  br label %186

195:                                              ; preds = %184, %186
  ret void
}

declare dso_local i32 @new(i32) #1

declare dso_local i32 @show(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
