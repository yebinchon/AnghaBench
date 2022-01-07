; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_zlib_reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_zlib_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlib = type { i64, i32, i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64, i8*, i64, i8* }

@Z_NULL = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zlib*, i32)* @zlib_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_reset(%struct.zlib* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zlib*, align 8
  %5 = alloca i32, align 4
  store %struct.zlib* %0, %struct.zlib** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.zlib*, %struct.zlib** %4, align 8
  %7 = getelementptr inbounds %struct.zlib, %struct.zlib* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i8*, i8** @Z_NULL, align 8
  %13 = load %struct.zlib*, %struct.zlib** %4, align 8
  %14 = getelementptr inbounds %struct.zlib, %struct.zlib* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i8* %12, i8** %15, align 8
  %16 = load %struct.zlib*, %struct.zlib** %4, align 8
  %17 = getelementptr inbounds %struct.zlib, %struct.zlib* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** @Z_NULL, align 8
  %20 = load %struct.zlib*, %struct.zlib** %4, align 8
  %21 = getelementptr inbounds %struct.zlib, %struct.zlib* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load %struct.zlib*, %struct.zlib** %4, align 8
  %24 = getelementptr inbounds %struct.zlib, %struct.zlib* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.zlib*, %struct.zlib** %4, align 8
  %28 = getelementptr inbounds %struct.zlib, %struct.zlib* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.zlib*, %struct.zlib** %4, align 8
  %30 = getelementptr inbounds %struct.zlib, %struct.zlib* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.zlib*, %struct.zlib** %4, align 8
  %32 = getelementptr inbounds %struct.zlib, %struct.zlib* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.zlib*, %struct.zlib** %4, align 8
  %34 = getelementptr inbounds %struct.zlib, %struct.zlib* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.zlib*, %struct.zlib** %4, align 8
  %36 = getelementptr inbounds %struct.zlib, %struct.zlib* %35, i32 0, i32 3
  %37 = call i64 @inflateReset2(%struct.TYPE_2__* %36, i32 0)
  %38 = load %struct.zlib*, %struct.zlib** %4, align 8
  %39 = getelementptr inbounds %struct.zlib, %struct.zlib* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.zlib*, %struct.zlib** %4, align 8
  %41 = getelementptr inbounds %struct.zlib, %struct.zlib* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @Z_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %2
  %46 = load %struct.zlib*, %struct.zlib** %4, align 8
  %47 = call i32 @zlib_message(%struct.zlib* %46, i32 1)
  store i32 0, i32* %3, align 4
  br label %49

48:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @inflateReset2(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @zlib_message(%struct.zlib*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
