; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_dcigettext.c_transcmp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_dcigettext.c_transcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.known_translation_t = type { i32, i32, i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @transcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transcmp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.known_translation_t*, align 8
  %6 = alloca %struct.known_translation_t*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.known_translation_t*
  store %struct.known_translation_t* %9, %struct.known_translation_t** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.known_translation_t*
  store %struct.known_translation_t* %11, %struct.known_translation_t** %6, align 8
  %12 = load %struct.known_translation_t*, %struct.known_translation_t** %5, align 8
  %13 = getelementptr inbounds %struct.known_translation_t, %struct.known_translation_t* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.known_translation_t*, %struct.known_translation_t** %5, align 8
  %18 = getelementptr inbounds %struct.known_translation_t, %struct.known_translation_t* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.known_translation_t*, %struct.known_translation_t** %5, align 8
  %23 = getelementptr inbounds %struct.known_translation_t, %struct.known_translation_t* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i32 [ %20, %16 ], [ %25, %21 ]
  %28 = load %struct.known_translation_t*, %struct.known_translation_t** %6, align 8
  %29 = getelementptr inbounds %struct.known_translation_t, %struct.known_translation_t* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.known_translation_t*, %struct.known_translation_t** %6, align 8
  %34 = getelementptr inbounds %struct.known_translation_t, %struct.known_translation_t* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  br label %42

37:                                               ; preds = %26
  %38 = load %struct.known_translation_t*, %struct.known_translation_t** %6, align 8
  %39 = getelementptr inbounds %struct.known_translation_t, %struct.known_translation_t* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i32 [ %36, %32 ], [ %41, %37 ]
  %44 = call i32 @strcmp(i32 %27, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load %struct.known_translation_t*, %struct.known_translation_t** %5, align 8
  %49 = getelementptr inbounds %struct.known_translation_t, %struct.known_translation_t* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.known_translation_t*, %struct.known_translation_t** %6, align 8
  %52 = getelementptr inbounds %struct.known_translation_t, %struct.known_translation_t* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strcmp(i32 %50, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = load %struct.known_translation_t*, %struct.known_translation_t** %5, align 8
  %59 = getelementptr inbounds %struct.known_translation_t, %struct.known_translation_t* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.known_translation_t*, %struct.known_translation_t** %6, align 8
  %62 = getelementptr inbounds %struct.known_translation_t, %struct.known_translation_t* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %57, %47
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
