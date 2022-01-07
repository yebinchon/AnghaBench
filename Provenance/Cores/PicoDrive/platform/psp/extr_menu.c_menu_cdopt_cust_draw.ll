; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_menu_cdopt_cust_draw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_menu_cdopt_cust_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.bios_names_t = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"USA BIOS:     %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"EUR BIOS:     %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"JAP BIOS:     %s\00", align 1
@PicoCDBuffers = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%5iK\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"     OFF\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ReadAhead buffer      %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i8*)* @menu_cdopt_cust_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_cdopt_cust_draw(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bios_names_t*, align 8
  %10 = alloca [16 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.bios_names_t*
  store %struct.bios_names_t* %12, %struct.bios_names_t** %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %53 [
    i32 128, label %16
    i32 130, label %23
    i32 129, label %30
    i32 131, label %37
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.bios_names_t*, %struct.bios_names_t** %9, align 8
  %20 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @text_out16(i32 %17, i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %54

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.bios_names_t*, %struct.bios_names_t** %9, align 8
  %27 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @text_out16(i32 %24, i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %54

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.bios_names_t*, %struct.bios_names_t** %9, align 8
  %34 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @text_out16(i32 %31, i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  br label %54

37:                                               ; preds = %4
  %38 = load i32, i32* @PicoCDBuffers, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %42 = load i32, i32* @PicoCDBuffers, align 4
  %43 = mul nsw i32 %42, 2
  %44 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %48

45:                                               ; preds = %37
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %47 = call i32 @strcpy(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %52 = call i32 @text_out16(i32 %49, i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %51)
  br label %54

53:                                               ; preds = %4
  br label %54

54:                                               ; preds = %53, %48, %30, %23, %16
  ret void
}

declare dso_local i32 @text_out16(i32, i32, i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
