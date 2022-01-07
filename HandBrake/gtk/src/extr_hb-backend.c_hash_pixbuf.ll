; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_hash_pixbuf.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_hash_pixbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32 }

@__const.hash_pixbuf.c = private unnamed_addr constant [4 x %struct.anon] [%struct.anon { i32 128, i32 128, i32 128 }, %struct.anon { i32 192, i32 128, i32 112 }, %struct.anon { i32 128, i32 160, i32 128 }, %struct.anon { i32 112, i32 128, i32 160 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i64, i64, i64, i64)* @hash_pixbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_pixbuf(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [4 x %struct.anon], align 16
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store i64 8, i64* %17, align 8
  %19 = bitcast [4 x %struct.anon]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([4 x %struct.anon]* @__const.hash_pixbuf.c to i8*), i64 48, i1 false)
  %20 = load i64, i64* %14, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %61, label %22

22:                                               ; preds = %7
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %24

24:                                               ; preds = %54, %22
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* %17, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %11, align 8
  %30 = add nsw i64 %28, %29
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %24
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* %16, align 8
  %35 = and i64 %34, 3
  %36 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %18, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %16, align 8
  %40 = and i64 %39, 3
  %41 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %18, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %16, align 8
  %45 = and i64 %44, 3
  %46 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %18, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %17, align 8
  %53 = call i32 @vert_line(i32* %33, i32 %38, i32 %43, i32 %48, i64 %49, i64 %50, i64 %51, i64 %52)
  br label %54

54:                                               ; preds = %32
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %15, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %16, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %16, align 8
  br label %24

60:                                               ; preds = %24
  br label %100

61:                                               ; preds = %7
  %62 = load i64, i64* %10, align 8
  store i64 %62, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %63

63:                                               ; preds = %93, %61
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %17, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %12, align 8
  %69 = add nsw i64 %67, %68
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %63
  %72 = load i32*, i32** %8, align 8
  %73 = load i64, i64* %16, align 8
  %74 = and i64 %73, 3
  %75 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %18, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %16, align 8
  %79 = and i64 %78, 3
  %80 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %18, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %16, align 8
  %84 = and i64 %83, 3
  %85 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %18, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.anon, %struct.anon* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %17, align 8
  %92 = call i32 @horz_line(i32* %72, i32 %77, i32 %82, i32 %87, i64 %88, i64 %89, i64 %90, i64 %91)
  br label %93

93:                                               ; preds = %71
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %15, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %15, align 8
  %97 = load i64, i64* %16, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %16, align 8
  br label %63

99:                                               ; preds = %63
  br label %100

100:                                              ; preds = %99, %60
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @vert_line(i32*, i32, i32, i32, i64, i64, i64, i64) #2

declare dso_local i32 @horz_line(i32*, i32, i32, i32, i64, i64, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
