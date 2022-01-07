; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4_unpack_bframes_bsf.c_scan_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4_unpack_bframes_bsf.c_scan_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USER_DATA_STARTCODE = common dso_local global i32 0, align 4
@VOP_STARTCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*, i32*, i32*)* @scan_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_buffer(i8* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %13, align 8
  br label %20

20:                                               ; preds = %109, %5
  %21 = load i8*, i8** %13, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %110

24:                                               ; preds = %20
  store i32 -1, i32* %11, align 4
  %25 = load i8*, i8** %13, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = call i8* @avpriv_find_start_code(i8* %25, i8* %26, i32* %11)
  store i8* %27, i8** %13, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @USER_DATA_STARTCODE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %81

31:                                               ; preds = %24
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %81

34:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %77, %34
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 255
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8*, i8** %12, align 8
  %45 = icmp ult i8* %43, %44
  br label %46

46:                                               ; preds = %38, %35
  %47 = phi i1 [ false, %35 ], [ %45, %38 ]
  br i1 %47, label %48, label %80

48:                                               ; preds = %46
  %49 = load i8*, i8** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 112
  br i1 %55, label %56, label %76

56:                                               ; preds = %48
  %57 = load i8*, i8** %13, align 8
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load i8*, i8** %13, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8*, i8** %6, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  br label %80

76:                                               ; preds = %56, %48
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %35

80:                                               ; preds = %65, %46
  br label %109

81:                                               ; preds = %31, %24
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @VOP_STARTCODE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = load i32*, i32** %9, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %108

88:                                               ; preds = %85
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load i32*, i32** %10, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sub nsw i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %10, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %98, %95, %88
  br label %108

108:                                              ; preds = %107, %85, %81
  br label %109

109:                                              ; preds = %108, %80
  br label %20

110:                                              ; preds = %20
  ret void
}

declare dso_local i8* @avpriv_find_start_code(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
