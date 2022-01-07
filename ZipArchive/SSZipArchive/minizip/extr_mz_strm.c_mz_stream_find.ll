; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm.c_mz_stream_find.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm.c_mz_stream_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_STREAM_FIND_SIZE = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@MZ_SEEK_SET = common dso_local global i32 0, align 4
@MZ_EXIST_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_stream_find(i8* %0, i8* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %24 = load i32, i32* @MZ_STREAM_FIND_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %28 = mul nuw i64 4, %25
  store i64 %28, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i32 1, i32* %21, align 4
  %29 = load i64, i64* @MZ_OK, align 8
  store i64 %29, i64* %22, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %5
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i64*, i64** %11, align 8
  %37 = icmp eq i64* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %32, %5
  %39 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %39, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %153

40:                                               ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %9, align 8
  %45 = mul nuw i64 4, %25
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %40
  %48 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %48, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %153

49:                                               ; preds = %43
  %50 = load i64*, i64** %11, align 8
  store i64 -1, i64* %50, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @mz_stream_tell(i8* %51)
  store i64 %52, i64* %18, align 8
  br label %53

53:                                               ; preds = %143, %49
  %54 = load i64, i64* %17, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %151

57:                                               ; preds = %53
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %17, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load i64, i64* %14, align 8
  %63 = sub nsw i64 %61, %62
  %64 = icmp sgt i64 %58, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %17, align 8
  %68 = sub nsw i64 %66, %67
  %69 = load i64, i64* %14, align 8
  %70 = sub nsw i64 %68, %69
  store i64 %70, i64* %15, align 8
  br label %71

71:                                               ; preds = %65, %57
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %14, align 8
  %74 = getelementptr inbounds i32, i32* %27, i64 %73
  %75 = load i64, i64* %15, align 8
  %76 = call i64 @mz_stream_read(i8* %72, i32* %74, i64 %75)
  store i64 %76, i64* %16, align 8
  %77 = load i64, i64* %16, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %71
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %14, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i64, i64* %9, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79, %71
  br label %151

86:                                               ; preds = %79
  store i64 0, i64* %20, align 8
  br label %87

87:                                               ; preds = %129, %86
  %88 = load i64, i64* %20, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %14, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64, i64* %9, align 8
  %93 = sub nsw i64 %91, %92
  %94 = icmp sle i64 %88, %93
  br i1 %94, label %95, label %132

95:                                               ; preds = %87
  %96 = load i64, i64* %20, align 8
  %97 = getelementptr inbounds i32, i32* %27, i64 %96
  %98 = load i8*, i8** %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i64 @memcmp(i32* %97, i8* %98, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %129

103:                                              ; preds = %95
  %104 = load i8*, i8** %7, align 8
  %105 = call i64 @mz_stream_tell(i8* %104)
  store i64 %105, i64* %19, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load i64, i64* %19, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* %14, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i64, i64* %20, align 8
  %112 = sub nsw i64 %110, %111
  %113 = sub nsw i64 %107, %112
  %114 = load i32, i32* @MZ_SEEK_SET, align 4
  %115 = call i64 @mz_stream_seek(i8* %106, i64 %113, i32 %114)
  store i64 %115, i64* %22, align 8
  %116 = load i64, i64* %22, align 8
  %117 = load i64, i64* @MZ_OK, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %103
  %120 = load i64, i64* @MZ_EXIST_ERROR, align 8
  store i64 %120, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %153

121:                                              ; preds = %103
  %122 = load i64, i64* %18, align 8
  %123 = load i64, i64* %17, align 8
  %124 = add nsw i64 %122, %123
  %125 = load i64, i64* %20, align 8
  %126 = add nsw i64 %124, %125
  %127 = load i64*, i64** %11, align 8
  store i64 %126, i64* %127, align 8
  %128 = load i64, i64* @MZ_OK, align 8
  store i64 %128, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %153

129:                                              ; preds = %102
  %130 = load i64, i64* %20, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %20, align 8
  br label %87

132:                                              ; preds = %87
  %133 = load i32, i32* %21, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* %16, align 8
  %138 = sub nsw i64 %137, %136
  store i64 %138, i64* %16, align 8
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* %15, align 8
  %141 = sub nsw i64 %140, %139
  store i64 %141, i64* %15, align 8
  %142 = load i64, i64* %9, align 8
  store i64 %142, i64* %14, align 8
  store i32 0, i32* %21, align 4
  br label %143

143:                                              ; preds = %135, %132
  %144 = load i64, i64* %16, align 8
  %145 = getelementptr inbounds i32, i32* %27, i64 %144
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @memmove(i32* %27, i32* %145, i64 %146)
  %148 = load i64, i64* %16, align 8
  %149 = load i64, i64* %17, align 8
  %150 = add nsw i64 %149, %148
  store i64 %150, i64* %17, align 8
  br label %53

151:                                              ; preds = %85, %53
  %152 = load i64, i64* @MZ_EXIST_ERROR, align 8
  store i64 %152, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %153

153:                                              ; preds = %151, %121, %119, %47, %38
  %154 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i64, i64* %6, align 8
  ret i64 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mz_stream_tell(i8*) #2

declare dso_local i64 @mz_stream_read(i8*, i32*, i64) #2

declare dso_local i64 @memcmp(i32*, i8*, i64) #2

declare dso_local i64 @mz_stream_seek(i8*, i64, i32) #2

declare dso_local i32 @memmove(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
