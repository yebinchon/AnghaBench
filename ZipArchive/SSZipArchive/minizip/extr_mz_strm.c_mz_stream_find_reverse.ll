; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm.c_mz_stream_find_reverse.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm.c_mz_stream_find_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_STREAM_FIND_SIZE = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@MZ_SEEK_SET = common dso_local global i32 0, align 4
@MZ_EXIST_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_stream_find_reverse(i8* %0, i8* %1, i64 %2, i64 %3, i64* %4) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
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
  %28 = load i32, i32* @MZ_STREAM_FIND_SIZE, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i32 1, i32* %20, align 4
  store i64 0, i64* %21, align 8
  %30 = load i64, i64* @MZ_OK, align 8
  store i64 %30, i64* %22, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %5
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64*, i64** %11, align 8
  %38 = icmp eq i64* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %33, %5
  %40 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %40, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %184

41:                                               ; preds = %36
  %42 = load i64, i64* %9, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %9, align 8
  %46 = mul nuw i64 4, %25
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %41
  %49 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %49, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %184

50:                                               ; preds = %44
  %51 = load i64*, i64** %11, align 8
  store i64 -1, i64* %51, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @mz_stream_tell(i8* %52)
  store i64 %53, i64* %18, align 8
  br label %54

54:                                               ; preds = %174, %50
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %182

58:                                               ; preds = %54
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %16, align 8
  %62 = sub nsw i64 %60, %61
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %16, align 8
  %67 = sub nsw i64 %65, %66
  store i64 %67, i64* %15, align 8
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %18, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* %15, align 8
  %73 = add nsw i64 %71, %72
  %74 = sub nsw i64 %70, %73
  %75 = load i32, i32* @MZ_SEEK_SET, align 4
  %76 = call i64 @mz_stream_seek(i8* %69, i64 %74, i32 %75)
  %77 = load i64, i64* @MZ_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %182

80:                                               ; preds = %68
  %81 = load i8*, i8** %7, align 8
  %82 = load i64, i64* %15, align 8
  %83 = call i64 @mz_stream_read(i8* %81, i32* %27, i64 %82)
  store i64 %83, i64* %17, align 8
  %84 = load i64, i64* %17, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load i64, i64* %17, align 8
  %88 = load i64, i64* %14, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i64, i64* %9, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86, %80
  br label %182

93:                                               ; preds = %86
  %94 = load i64, i64* %17, align 8
  %95 = load i64, i64* %14, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i32, i32* @MZ_STREAM_FIND_SIZE, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %96, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %93
  %101 = load i32, i32* @MZ_STREAM_FIND_SIZE, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %27, i64 %102
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* %14, align 8
  %106 = add nsw i64 %104, %105
  %107 = sub i64 0, %106
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i64, i64* %17, align 8
  %110 = call i32 @memmove(i32* %108, i32* %27, i64 %109)
  br label %111

111:                                              ; preds = %100, %93
  %112 = load i64, i64* %9, align 8
  store i64 %112, i64* %21, align 8
  br label %113

113:                                              ; preds = %156, %111
  %114 = load i64, i64* %21, align 8
  %115 = load i64, i64* %17, align 8
  %116 = load i64, i64* %14, align 8
  %117 = add nsw i64 %115, %116
  %118 = icmp sle i64 %114, %117
  br i1 %118, label %119, label %159

119:                                              ; preds = %113
  %120 = load i32, i32* @MZ_STREAM_FIND_SIZE, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %21, align 8
  %123 = sub nsw i64 %121, %122
  %124 = getelementptr inbounds i32, i32* %27, i64 %123
  %125 = load i8*, i8** %8, align 8
  %126 = load i64, i64* %9, align 8
  %127 = call i64 @memcmp(i32* %124, i8* %125, i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %156

130:                                              ; preds = %119
  %131 = load i8*, i8** %7, align 8
  %132 = call i64 @mz_stream_tell(i8* %131)
  store i64 %132, i64* %19, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = load i64, i64* %19, align 8
  %135 = load i64, i64* %14, align 8
  %136 = add nsw i64 %134, %135
  %137 = load i64, i64* %21, align 8
  %138 = sub nsw i64 %136, %137
  %139 = load i32, i32* @MZ_SEEK_SET, align 4
  %140 = call i64 @mz_stream_seek(i8* %133, i64 %138, i32 %139)
  store i64 %140, i64* %22, align 8
  %141 = load i64, i64* %22, align 8
  %142 = load i64, i64* @MZ_OK, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %130
  %145 = load i64, i64* @MZ_EXIST_ERROR, align 8
  store i64 %145, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %184

146:                                              ; preds = %130
  %147 = load i64, i64* %18, align 8
  %148 = load i64, i64* %16, align 8
  %149 = load i64, i64* %14, align 8
  %150 = sub nsw i64 %148, %149
  %151 = load i64, i64* %21, align 8
  %152 = add nsw i64 %150, %151
  %153 = sub nsw i64 %147, %152
  %154 = load i64*, i64** %11, align 8
  store i64 %153, i64* %154, align 8
  %155 = load i64, i64* @MZ_OK, align 8
  store i64 %155, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %184

156:                                              ; preds = %129
  %157 = load i64, i64* %21, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %21, align 8
  br label %113

159:                                              ; preds = %113
  %160 = load i32, i32* %20, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* %17, align 8
  %165 = sub nsw i64 %164, %163
  store i64 %165, i64* %17, align 8
  %166 = load i64, i64* %9, align 8
  %167 = load i64, i64* %15, align 8
  %168 = sub nsw i64 %167, %166
  store i64 %168, i64* %15, align 8
  %169 = load i64, i64* %9, align 8
  store i64 %169, i64* %14, align 8
  store i32 0, i32* %20, align 4
  br label %170

170:                                              ; preds = %162, %159
  %171 = load i64, i64* %17, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  br label %182

174:                                              ; preds = %170
  %175 = load i64, i64* %15, align 8
  %176 = getelementptr inbounds i32, i32* %27, i64 %175
  %177 = load i64, i64* %9, align 8
  %178 = call i32 @memmove(i32* %176, i32* %27, i64 %177)
  %179 = load i64, i64* %17, align 8
  %180 = load i64, i64* %16, align 8
  %181 = add nsw i64 %180, %179
  store i64 %181, i64* %16, align 8
  br label %54

182:                                              ; preds = %173, %92, %79, %54
  %183 = load i64, i64* @MZ_EXIST_ERROR, align 8
  store i64 %183, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %184

184:                                              ; preds = %182, %146, %144, %48, %39
  %185 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %185)
  %186 = load i64, i64* %6, align 8
  ret i64 %186
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mz_stream_tell(i8*) #2

declare dso_local i64 @mz_stream_seek(i8*, i64, i32) #2

declare dso_local i64 @mz_stream_read(i8*, i32*, i64) #2

declare dso_local i32 @memmove(i32*, i32*, i64) #2

declare dso_local i64 @memcmp(i32*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
