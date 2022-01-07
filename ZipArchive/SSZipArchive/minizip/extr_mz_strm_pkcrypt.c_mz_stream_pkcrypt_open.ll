; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_pkcrypt.c_mz_stream_pkcrypt_open.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_pkcrypt.c_mz_stream_pkcrypt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i64, i64, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@MZ_PKCRYPT_HEADER_SIZE = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i64 0, align 8
@MZ_OPEN_ERROR = common dso_local global i32 0, align 4
@MZ_PARAM_ERROR = common dso_local global i32 0, align 4
@MZ_OPEN_MODE_WRITE = common dso_local global i32 0, align 4
@MZ_WRITE_ERROR = common dso_local global i32 0, align 4
@MZ_OPEN_MODE_READ = common dso_local global i32 0, align 4
@MZ_READ_ERROR = common dso_local global i32 0, align 4
@MZ_PASSWORD_ERROR = common dso_local global i32 0, align 4
@MZ_SUPPORT_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_stream_pkcrypt_open(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load i32, i32* @MZ_PKCRYPT_HEADER_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %15, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @mz_stream_is_open(i32 %33)
  %35 = load i64, i64* @MZ_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @MZ_OPEN_ERROR, align 4
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %199

39:                                               ; preds = %3
  %40 = load i8*, i8** %15, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %15, align 8
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i8*, i8** %15, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %199

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 @mz_stream_pkcrypt_init_keys(i8* %52, i8* %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MZ_OPEN_MODE_WRITE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %122

59:                                               ; preds = %51
  %60 = load i32, i32* @MZ_PKCRYPT_HEADER_SIZE, align 4
  %61 = sub nsw i32 %60, 2
  %62 = call i32 @mz_crypt_rand(i64* %22, i32 %61)
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %79, %59
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @MZ_PKCRYPT_HEADER_SIZE, align 4
  %66 = sub nsw i32 %65, 2
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %22, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @mz_stream_pkcrypt_encode(i8* %69, i64 %73, i64 %74)
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %22, i64 %77
  store i64 %75, i64* %78, align 8
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %63

82:                                               ; preds = %63
  %83 = load i8*, i8** %5, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @mz_stream_pkcrypt_encode(i8* %83, i64 %86, i64 %87)
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i64, i64* %22, i64 %91
  store i64 %88, i64* %92, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i64 @mz_stream_pkcrypt_encode(i8* %93, i64 %96, i64 %97)
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i64, i64* %22, i64 %101
  store i64 %98, i64* %102, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul nuw i64 8, %20
  %108 = trunc i64 %107 to i32
  %109 = call i32 @mz_stream_write(i32 %106, i64* %22, i32 %108)
  %110 = sext i32 %109 to i64
  %111 = mul nuw i64 8, %20
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %82
  %114 = load i32, i32* @MZ_WRITE_ERROR, align 4
  store i32 %114, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %199

115:                                              ; preds = %82
  %116 = load i32, i32* @MZ_PKCRYPT_HEADER_SIZE, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  br label %194

122:                                              ; preds = %51
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @MZ_OPEN_MODE_READ, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %193

127:                                              ; preds = %122
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = mul nuw i64 8, %20
  %133 = trunc i64 %132 to i32
  %134 = call i32 @mz_stream_read(i32 %131, i64* %22, i32 %133)
  %135 = sext i32 %134 to i64
  %136 = mul nuw i64 8, %20
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %127
  %139 = load i32, i32* @MZ_READ_ERROR, align 4
  store i32 %139, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %199

140:                                              ; preds = %127
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %156, %140
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @MZ_PKCRYPT_HEADER_SIZE, align 4
  %144 = sub nsw i32 %143, 2
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %141
  %147 = load i8*, i8** %5, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %22, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = call i64 @mz_stream_pkcrypt_decode(i8* %147, i64 %151)
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %22, i64 %154
  store i64 %152, i64* %155, align 8
  br label %156

156:                                              ; preds = %146
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %141

159:                                              ; preds = %141
  %160 = load i8*, i8** %5, align 8
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i64, i64* %22, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @mz_stream_pkcrypt_decode(i8* %160, i64 %165)
  store i64 %166, i64* %11, align 8
  %167 = load i8*, i8** %5, align 8
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i64, i64* %22, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @mz_stream_pkcrypt_decode(i8* %167, i64 %172)
  store i64 %173, i64* %12, align 8
  %174 = load i64, i64* %11, align 8
  %175 = call i32 @MZ_UNUSED(i64 %174)
  %176 = load i64, i64* %12, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %159
  %179 = load i64, i64* %12, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %179, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = load i32, i32* @MZ_PASSWORD_ERROR, align 4
  store i32 %185, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %199

186:                                              ; preds = %178, %159
  %187 = load i32, i32* @MZ_PKCRYPT_HEADER_SIZE, align 4
  %188 = sext i32 %187 to i64
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, %188
  store i64 %192, i64* %190, align 8
  br label %193

193:                                              ; preds = %186, %122
  br label %194

194:                                              ; preds = %193, %115
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  store i32 1, i32* %196, align 8
  %197 = load i64, i64* @MZ_OK, align 8
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %199

199:                                              ; preds = %194, %184, %138, %113, %49, %37
  %200 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mz_stream_is_open(i32) #2

declare dso_local i32 @mz_stream_pkcrypt_init_keys(i8*, i8*) #2

declare dso_local i32 @mz_crypt_rand(i64*, i32) #2

declare dso_local i64 @mz_stream_pkcrypt_encode(i8*, i64, i64) #2

declare dso_local i32 @mz_stream_write(i32, i64*, i32) #2

declare dso_local i32 @mz_stream_read(i32, i64*, i32) #2

declare dso_local i64 @mz_stream_pkcrypt_decode(i8*, i64) #2

declare dso_local i32 @MZ_UNUSED(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
