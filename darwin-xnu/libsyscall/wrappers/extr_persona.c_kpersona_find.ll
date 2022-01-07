; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_persona.c_kpersona_find.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_persona.c_kpersona_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpersona_info = type { i64*, i64*, i64, i64, i64, i32, i32 }

@PERSONA_INFO_V1 = common dso_local global i32 0, align 4
@PERSONA_OP_FIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpersona_find(i8* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kpersona_info, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* @PERSONA_INFO_V1, align 4
  %13 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %11, i32 0, i32 6
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %11, i32 0, i32 5
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %11, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %11, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %11, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %11, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %11, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 0, i64* %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %11, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strlcpy(i64* %29, i8* %30, i32 8)
  br label %32

32:                                               ; preds = %27, %4
  %33 = load i32, i32* @PERSONA_OP_FIND, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = call i32 @__persona(i32 %33, i32 0, %struct.kpersona_info* %11, i32* %34, i64* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %45

41:                                               ; preds = %32
  %42 = load i64*, i64** %9, align 8
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @strlcpy(i64*, i8*, i32) #1

declare dso_local i32 @__persona(i32, i32, %struct.kpersona_info*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
