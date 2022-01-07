; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/GC/extr_gc_c.c_create_objects.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/GC/extr_gc_c.c_create_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @create_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_objects(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %40 = call i8* @malloc(i32 16)
  store i8* %40, i8** %3, align 8
  %41 = call i8* @malloc(i32 16)
  store i8* %41, i8** %4, align 8
  %42 = call i8* @malloc(i32 16)
  store i8* %42, i8** %5, align 8
  %43 = call i8* @malloc(i32 16)
  store i8* %43, i8** %6, align 8
  %44 = call i8* @malloc(i32 16)
  store i8* %44, i8** %7, align 8
  %45 = call i8* @malloc(i32 16)
  store i8* %45, i8** %8, align 8
  %46 = call i8* @malloc(i32 16)
  store i8* %46, i8** %9, align 8
  %47 = call i8* @malloc(i32 16)
  store i8* %47, i8** %10, align 8
  %48 = call i8* @malloc(i32 16)
  store i8* %48, i8** %11, align 8
  %49 = call i8* @malloc(i32 16)
  store i8* %49, i8** %12, align 8
  %50 = call i8* @malloc(i32 16)
  store i8* %50, i8** %13, align 8
  %51 = call i8* @malloc(i32 16)
  store i8* %51, i8** %14, align 8
  %52 = call i8* @malloc(i32 16)
  store i8* %52, i8** %15, align 8
  %53 = call i8* @malloc(i32 16)
  store i8* %53, i8** %16, align 8
  %54 = call i8* @malloc(i32 16)
  store i8* %54, i8** %17, align 8
  %55 = call i8* @malloc(i32 16)
  store i8* %55, i8** %18, align 8
  %56 = call i8* @malloc(i32 16)
  store i8* %56, i8** %19, align 8
  %57 = call i8* @malloc(i32 16)
  store i8* %57, i8** %20, align 8
  %58 = call i8* @malloc(i32 16)
  store i8* %58, i8** %21, align 8
  %59 = call i8* @malloc(i32 16)
  store i8* %59, i8** %22, align 8
  %60 = call i8* @malloc(i32 16)
  store i8* %60, i8** %23, align 8
  %61 = call i8* @malloc(i32 16)
  store i8* %61, i8** %24, align 8
  %62 = call i8* @malloc(i32 16)
  store i8* %62, i8** %25, align 8
  %63 = call i8* @malloc(i32 16)
  store i8* %63, i8** %26, align 8
  %64 = call i8* @malloc(i32 16)
  store i8* %64, i8** %27, align 8
  %65 = call i8* @malloc(i32 16)
  store i8* %65, i8** %28, align 8
  %66 = call i8* @malloc(i32 16)
  store i8* %66, i8** %29, align 8
  %67 = call i8* @malloc(i32 16)
  store i8* %67, i8** %30, align 8
  %68 = call i8* @malloc(i32 16)
  store i8* %68, i8** %31, align 8
  %69 = call i8* @malloc(i32 16)
  store i8* %69, i8** %32, align 8
  %70 = call i8* @malloc(i32 16)
  store i8* %70, i8** %33, align 8
  %71 = call i8* @malloc(i32 16)
  store i8* %71, i8** %34, align 8
  %72 = call i8* @malloc(i32 16)
  store i8* %72, i8** %35, align 8
  %73 = call i8* @malloc(i32 16)
  store i8* %73, i8** %36, align 8
  %74 = call i8* @malloc(i32 16)
  store i8* %74, i8** %37, align 8
  %75 = load i32, i32* %2, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %78

77:                                               ; preds = %1
  br label %160

78:                                               ; preds = %1
  store i64 0, i64* %38, align 8
  br label %79

79:                                               ; preds = %85, %78
  %80 = load i64, i64* %38, align 8
  %81 = icmp ult i64 %80, 10
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, 1
  call void @create_objects(i32 %84)
  br label %85

85:                                               ; preds = %82
  %86 = load i64, i64* %38, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %38, align 8
  br label %79

88:                                               ; preds = %79
  store volatile i32 1, i32* %39, align 4
  %89 = load volatile i32, i32* %39, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %160

91:                                               ; preds = %88
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i8*, i8** %13, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i8*, i8** %14, align 8
  %115 = call i32 @free(i8* %114)
  %116 = load i8*, i8** %15, align 8
  %117 = call i32 @free(i8* %116)
  %118 = load i8*, i8** %16, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load i8*, i8** %17, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i8*, i8** %18, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i8*, i8** %19, align 8
  %125 = call i32 @free(i8* %124)
  %126 = load i8*, i8** %20, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load i8*, i8** %21, align 8
  %129 = call i32 @free(i8* %128)
  %130 = load i8*, i8** %22, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load i8*, i8** %23, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i8*, i8** %24, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i8*, i8** %25, align 8
  %137 = call i32 @free(i8* %136)
  %138 = load i8*, i8** %26, align 8
  %139 = call i32 @free(i8* %138)
  %140 = load i8*, i8** %27, align 8
  %141 = call i32 @free(i8* %140)
  %142 = load i8*, i8** %28, align 8
  %143 = call i32 @free(i8* %142)
  %144 = load i8*, i8** %29, align 8
  %145 = call i32 @free(i8* %144)
  %146 = load i8*, i8** %30, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load i8*, i8** %31, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load i8*, i8** %32, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load i8*, i8** %33, align 8
  %153 = call i32 @free(i8* %152)
  %154 = load i8*, i8** %34, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load i8*, i8** %35, align 8
  %157 = call i32 @free(i8* %156)
  %158 = load i8*, i8** %37, align 8
  %159 = call i32 @free(i8* %158)
  br label %160

160:                                              ; preds = %77, %91, %88
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
