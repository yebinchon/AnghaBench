; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsbmprbmp_encode.c_form_bmp_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsbmprbmp_encode.c_form_bmp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @form_bmp_header(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 4, i32 3
  %17 = mul i32 %12, %16
  %18 = add i32 %17, 3
  %19 = and i32 %18, -4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = mul i32 %20, %21
  %23 = add i32 %22, 54
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 66, i8* %28, align 1
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 77, i8* %30, align 1
  %31 = load i32, i32* %10, align 4
  %32 = lshr i32 %31, 0
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  store i8 %33, i8* %35, align 1
  %36 = load i32, i32* %10, align 4
  %37 = lshr i32 %36, 8
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  store i8 %38, i8* %40, align 1
  %41 = load i32, i32* %10, align 4
  %42 = lshr i32 %41, 16
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  store i8 %43, i8* %45, align 1
  %46 = load i32, i32* %10, align 4
  %47 = lshr i32 %46, 24
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 5
  store i8 %48, i8* %50, align 1
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 6
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 7
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 8
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 9
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 10
  store i8 54, i8* %60, align 1
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 11
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 12
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 13
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 14
  store i8 40, i8* %68, align 1
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 15
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 16
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 17
  store i8 0, i8* %74, align 1
  %75 = load i32, i32* %6, align 4
  %76 = lshr i32 %75, 0
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 18
  store i8 %77, i8* %79, align 1
  %80 = load i32, i32* %6, align 4
  %81 = lshr i32 %80, 8
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 19
  store i8 %82, i8* %84, align 1
  %85 = load i32, i32* %6, align 4
  %86 = lshr i32 %85, 16
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 20
  store i8 %87, i8* %89, align 1
  %90 = load i32, i32* %6, align 4
  %91 = lshr i32 %90, 24
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 21
  store i8 %92, i8* %94, align 1
  %95 = load i32, i32* %7, align 4
  %96 = lshr i32 %95, 0
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 22
  store i8 %97, i8* %99, align 1
  %100 = load i32, i32* %7, align 4
  %101 = lshr i32 %100, 8
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 23
  store i8 %102, i8* %104, align 1
  %105 = load i32, i32* %7, align 4
  %106 = lshr i32 %105, 16
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 24
  store i8 %107, i8* %109, align 1
  %110 = load i32, i32* %7, align 4
  %111 = lshr i32 %110, 24
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 25
  store i8 %112, i8* %114, align 1
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 26
  store i8 1, i8* %116, align 1
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 27
  store i8 0, i8* %118, align 1
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 32, i32 24
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 28
  store i8 %123, i8* %125, align 1
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 29
  store i8 0, i8* %127, align 1
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 30
  store i8 0, i8* %129, align 1
  %130 = load i8*, i8** %5, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 31
  store i8 0, i8* %131, align 1
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 32
  store i8 0, i8* %133, align 1
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 33
  store i8 0, i8* %135, align 1
  %136 = load i32, i32* %11, align 4
  %137 = lshr i32 %136, 0
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 34
  store i8 %138, i8* %140, align 1
  %141 = load i32, i32* %11, align 4
  %142 = lshr i32 %141, 8
  %143 = trunc i32 %142 to i8
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 35
  store i8 %143, i8* %145, align 1
  %146 = load i32, i32* %11, align 4
  %147 = lshr i32 %146, 16
  %148 = trunc i32 %147 to i8
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 36
  store i8 %148, i8* %150, align 1
  %151 = load i32, i32* %11, align 4
  %152 = lshr i32 %151, 24
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %5, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 37
  store i8 %153, i8* %155, align 1
  %156 = load i8*, i8** %5, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 38
  store i8 19, i8* %157, align 1
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 39
  store i8 11, i8* %159, align 1
  %160 = load i8*, i8** %5, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 40
  store i8 0, i8* %161, align 1
  %162 = load i8*, i8** %5, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 41
  store i8 0, i8* %163, align 1
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 42
  store i8 19, i8* %165, align 1
  %166 = load i8*, i8** %5, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 43
  store i8 11, i8* %167, align 1
  %168 = load i8*, i8** %5, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 44
  store i8 0, i8* %169, align 1
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 45
  store i8 0, i8* %171, align 1
  %172 = load i8*, i8** %5, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 46
  store i8 0, i8* %173, align 1
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 47
  store i8 0, i8* %175, align 1
  %176 = load i8*, i8** %5, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 48
  store i8 0, i8* %177, align 1
  %178 = load i8*, i8** %5, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 49
  store i8 0, i8* %179, align 1
  %180 = load i8*, i8** %5, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 50
  store i8 0, i8* %181, align 1
  %182 = load i8*, i8** %5, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 51
  store i8 0, i8* %183, align 1
  %184 = load i8*, i8** %5, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 52
  store i8 0, i8* %185, align 1
  %186 = load i8*, i8** %5, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 53
  store i8 0, i8* %187, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
