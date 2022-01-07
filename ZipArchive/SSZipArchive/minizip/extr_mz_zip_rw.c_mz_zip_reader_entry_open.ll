; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_entry_open.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_entry_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32 (i8*, i32, %struct.TYPE_5__*, i8*, i32)* }
%struct.TYPE_5__ = type { i32 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@MZ_ZIP_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@MZ_HASH_SHA1 = common dso_local global i64 0, align 8
@MZ_HASH_SHA256 = common dso_local global i64 0, align 8
@MZ_SUPPORT_ERROR = common dso_local global i64 0, align 8
@MZ_SIGN_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_reader_entry_open(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [120 x i8], align 16
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  %10 = load i64, i64* @MZ_OK, align 8
  store i64 %10, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = call i64 @mz_zip_reader_is_open(%struct.TYPE_4__* %13)
  %15 = load i64, i64* @MZ_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %18, i64* %2, align 8
  br label %147

19:                                               ; preds = %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 9
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %25, i64* %2, align 8
  br label %147

26:                                               ; preds = %19
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @mz_zip_entry_is_open(i32 %29)
  %31 = load i64, i64* @MZ_OK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i64, i64* @MZ_OK, align 8
  store i64 %34, i64* %2, align 8
  br label %147

35:                                               ; preds = %26
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %6, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 9
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MZ_ZIP_FLAG_ENCRYPTED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %35
  %48 = load i8*, i8** %6, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 11
  %53 = load i32 (i8*, i32, %struct.TYPE_5__*, i8*, i32)*, i32 (i8*, i32, %struct.TYPE_5__*, i8*, i32)** %52, align 8
  %54 = icmp ne i32 (i8*, i32, %struct.TYPE_5__*, i8*, i32)* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 11
  %58 = load i32 (i8*, i32, %struct.TYPE_5__*, i8*, i32)*, i32 (i8*, i32, %struct.TYPE_5__*, i8*, i32)** %57, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 9
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds [120 x i8], [120 x i8]* %7, i64 0, i64 0
  %67 = call i32 %58(i8* %59, i32 %62, %struct.TYPE_5__* %65, i8* %66, i32 120)
  %68 = getelementptr inbounds [120 x i8], [120 x i8]* %7, i64 0, i64 0
  store i8* %68, i8** %6, align 8
  br label %69

69:                                               ; preds = %55, %50, %47, %35
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i64 @mz_zip_entry_read_open(i32 %72, i32 %75, i8* %76)
  store i64 %77, i64* %5, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @MZ_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i64, i64* %5, align 8
  store i64 %82, i64* %2, align 8
  br label %147

83:                                               ; preds = %69
  %84 = load i8*, i8** %3, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 6
  %89 = call i64 @mz_zip_reader_entry_get_first_hash(i8* %84, i64* %86, i32* %88)
  %90 = load i64, i64* @MZ_OK, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %132

92:                                               ; preds = %83
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 5
  %95 = call i32 @mz_crypt_sha_create(i32* %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MZ_HASH_SHA1, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* @MZ_HASH_SHA1, align 8
  %106 = call i32 @mz_crypt_sha_set_algorithm(i32 %104, i64 %105)
  br label %122

107:                                              ; preds = %92
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @MZ_HASH_SHA256, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* @MZ_HASH_SHA256, align 8
  %118 = call i32 @mz_crypt_sha_set_algorithm(i32 %116, i64 %117)
  br label %121

119:                                              ; preds = %107
  %120 = load i64, i64* @MZ_SUPPORT_ERROR, align 8
  store i64 %120, i64* %5, align 8
  br label %121

121:                                              ; preds = %119, %113
  br label %122

122:                                              ; preds = %121, %101
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @MZ_OK, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @mz_crypt_sha_begin(i32 %129)
  br label %131

131:                                              ; preds = %126, %122
  br label %145

132:                                              ; preds = %83
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = load i64, i64* @MZ_SIGN_ERROR, align 8
  store i64 %143, i64* %5, align 8
  br label %144

144:                                              ; preds = %142, %137, %132
  br label %145

145:                                              ; preds = %144, %131
  %146 = load i64, i64* %5, align 8
  store i64 %146, i64* %2, align 8
  br label %147

147:                                              ; preds = %145, %81, %33, %24, %17
  %148 = load i64, i64* %2, align 8
  ret i64 %148
}

declare dso_local i64 @mz_zip_reader_is_open(%struct.TYPE_4__*) #1

declare dso_local i64 @mz_zip_entry_is_open(i32) #1

declare dso_local i64 @mz_zip_entry_read_open(i32, i32, i8*) #1

declare dso_local i64 @mz_zip_reader_entry_get_first_hash(i8*, i64*, i32*) #1

declare dso_local i32 @mz_crypt_sha_create(i32*) #1

declare dso_local i32 @mz_crypt_sha_set_algorithm(i32, i64) #1

declare dso_local i32 @mz_crypt_sha_begin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
