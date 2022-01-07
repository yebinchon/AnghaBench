; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_zlib_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_zlib_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlib = type { i32, i32, i32, i32, i64, %struct.TYPE_2__, i64, i64, i64, i32, i32, i32, %struct.chunk*, %struct.IDAT* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i64, i8* }
%struct.IDAT = type { i32 }
%struct.chunk = type { i32, i32 }

@Z_NULL = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zlib*, %struct.IDAT*, %struct.chunk*, i32, i32)* @zlib_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_init(%struct.zlib* %0, %struct.IDAT* %1, %struct.chunk* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zlib*, align 8
  %8 = alloca %struct.IDAT*, align 8
  %9 = alloca %struct.chunk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.zlib* %0, %struct.zlib** %7, align 8
  store %struct.IDAT* %1, %struct.IDAT** %8, align 8
  store %struct.chunk* %2, %struct.chunk** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.zlib*, %struct.zlib** %7, align 8
  %13 = call i32 @CLEAR(%struct.zlib* byval(%struct.zlib) align 8 %12)
  %14 = load %struct.IDAT*, %struct.IDAT** %8, align 8
  %15 = load %struct.zlib*, %struct.zlib** %7, align 8
  %16 = getelementptr inbounds %struct.zlib, %struct.zlib* %15, i32 0, i32 13
  store %struct.IDAT* %14, %struct.IDAT** %16, align 8
  %17 = load %struct.chunk*, %struct.chunk** %9, align 8
  %18 = load %struct.zlib*, %struct.zlib** %7, align 8
  %19 = getelementptr inbounds %struct.zlib, %struct.zlib* %18, i32 0, i32 12
  store %struct.chunk* %17, %struct.chunk** %19, align 8
  %20 = load %struct.chunk*, %struct.chunk** %9, align 8
  %21 = getelementptr inbounds %struct.chunk, %struct.chunk* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.zlib*, %struct.zlib** %7, align 8
  %24 = getelementptr inbounds %struct.zlib, %struct.zlib* %23, i32 0, i32 11
  store i32 %22, i32* %24, align 8
  %25 = load %struct.chunk*, %struct.chunk** %9, align 8
  %26 = getelementptr inbounds %struct.chunk, %struct.chunk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.zlib*, %struct.zlib** %7, align 8
  %29 = getelementptr inbounds %struct.zlib, %struct.zlib* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.zlib*, %struct.zlib** %7, align 8
  %32 = getelementptr inbounds %struct.zlib, %struct.zlib* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** @Z_NULL, align 8
  %34 = load %struct.zlib*, %struct.zlib** %7, align 8
  %35 = getelementptr inbounds %struct.zlib, %struct.zlib* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  store i8* %33, i8** %36, align 8
  %37 = load %struct.zlib*, %struct.zlib** %7, align 8
  %38 = getelementptr inbounds %struct.zlib, %struct.zlib* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load i8*, i8** @Z_NULL, align 8
  %41 = load %struct.zlib*, %struct.zlib** %7, align 8
  %42 = getelementptr inbounds %struct.zlib, %struct.zlib* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** @Z_NULL, align 8
  %45 = load %struct.zlib*, %struct.zlib** %7, align 8
  %46 = getelementptr inbounds %struct.zlib, %struct.zlib* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** @Z_NULL, align 8
  %49 = load %struct.zlib*, %struct.zlib** %7, align 8
  %50 = getelementptr inbounds %struct.zlib, %struct.zlib* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load %struct.zlib*, %struct.zlib** %7, align 8
  %53 = getelementptr inbounds %struct.zlib, %struct.zlib* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.zlib*, %struct.zlib** %7, align 8
  %56 = getelementptr inbounds %struct.zlib, %struct.zlib* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.zlib*, %struct.zlib** %7, align 8
  %58 = getelementptr inbounds %struct.zlib, %struct.zlib* %57, i32 0, i32 8
  store i64 0, i64* %58, align 8
  %59 = load %struct.zlib*, %struct.zlib** %7, align 8
  %60 = getelementptr inbounds %struct.zlib, %struct.zlib* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load %struct.zlib*, %struct.zlib** %7, align 8
  %62 = getelementptr inbounds %struct.zlib, %struct.zlib* %61, i32 0, i32 2
  store i32 24, i32* %62, align 8
  %63 = load %struct.zlib*, %struct.zlib** %7, align 8
  %64 = getelementptr inbounds %struct.zlib, %struct.zlib* %63, i32 0, i32 3
  store i32 16, i32* %64, align 4
  %65 = load %struct.zlib*, %struct.zlib** %7, align 8
  %66 = getelementptr inbounds %struct.zlib, %struct.zlib* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = load %struct.zlib*, %struct.zlib** %7, align 8
  %68 = getelementptr inbounds %struct.zlib, %struct.zlib* %67, i32 0, i32 5
  %69 = call i64 @inflateInit2(%struct.TYPE_2__* %68, i32 0)
  %70 = load %struct.zlib*, %struct.zlib** %7, align 8
  %71 = getelementptr inbounds %struct.zlib, %struct.zlib* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  %72 = load %struct.zlib*, %struct.zlib** %7, align 8
  %73 = getelementptr inbounds %struct.zlib, %struct.zlib* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @Z_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %5
  %78 = load %struct.zlib*, %struct.zlib** %7, align 8
  %79 = call i32 @zlib_message(%struct.zlib* %78, i32 1)
  store i32 0, i32* %6, align 4
  br label %83

80:                                               ; preds = %5
  %81 = load %struct.zlib*, %struct.zlib** %7, align 8
  %82 = getelementptr inbounds %struct.zlib, %struct.zlib* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @CLEAR(%struct.zlib* byval(%struct.zlib) align 8) #1

declare dso_local i64 @inflateInit2(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @zlib_message(%struct.zlib*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
