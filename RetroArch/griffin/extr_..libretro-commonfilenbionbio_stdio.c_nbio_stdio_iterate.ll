; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilenbionbio_stdio.c_nbio_stdio_iterate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilenbionbio_stdio.c_nbio_stdio_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbio_stdio_t = type { i64, i64, i32, i32, i64, i32 }

@BIO_READ = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @nbio_stdio_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbio_stdio_iterate(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nbio_stdio_t*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 65536, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.nbio_stdio_t*
  store %struct.nbio_stdio_t* %8, %struct.nbio_stdio_t** %5, align 8
  %9 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %10 = icmp ne %struct.nbio_stdio_t* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %129

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %15 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %18 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  %21 = icmp ugt i64 %13, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %24 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %27 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %25, %28
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %22, %12
  %31 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %32 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %107 [
    i32 129, label %34
    i32 128, label %68
  ]

34:                                               ; preds = %30
  %35 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %36 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BIO_READ, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %42 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %4, align 8
  %44 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %45 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load i64, i64* %4, align 8
  %49 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %50 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @fread(i8* %47, i32 1, i64 %48, i32 %51)
  br label %67

53:                                               ; preds = %34
  %54 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %55 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %59 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %64 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fread(i8* %61, i32 1, i64 %62, i32 %65)
  br label %67

67:                                               ; preds = %53, %40
  br label %107

68:                                               ; preds = %30
  %69 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %70 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BIO_WRITE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %68
  store i64 0, i64* %6, align 8
  %75 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %76 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %4, align 8
  %78 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %79 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load i64, i64* %4, align 8
  %83 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %84 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @fwrite(i8* %81, i32 1, i64 %82, i32 %85)
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %4, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %129

91:                                               ; preds = %74
  br label %106

92:                                               ; preds = %68
  %93 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %94 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %98 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  %101 = load i64, i64* %4, align 8
  %102 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %103 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @fwrite(i8* %100, i32 1, i64 %101, i32 %104)
  br label %106

106:                                              ; preds = %92, %91
  br label %107

107:                                              ; preds = %30, %106, %67
  %108 = load i64, i64* %4, align 8
  %109 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %110 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, %108
  store i64 %112, i64* %110, align 8
  %113 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %114 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %117 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %107
  %121 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %122 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %121, i32 0, i32 2
  store i32 -1, i32* %122, align 8
  br label %123

123:                                              ; preds = %120, %107
  %124 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %5, align 8
  %125 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %126, 0
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %123, %90, %11
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @fread(i8*, i32, i64, i32) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
