; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_add_path.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_add_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.dirent = type { i8* }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_EXIST_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_writer_add_path(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dirent*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [1024 x i8], align 16
  %21 = alloca [1024 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %12, align 8
  store i32* null, i32** %13, align 8
  store %struct.dirent* null, %struct.dirent** %14, align 8
  %24 = load i64, i64* @MZ_OK, align 8
  store i64 %24, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32* @strrchr(i8* %26, i8 signext 42)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %5
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strncpy(i8* %30, i8* %31, i32 1023)
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 1023
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %35 = call i32 @mz_path_remove_filename(i8* %34)
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %38 = call i32 @strlen(i8* %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %19, align 8
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  store i8* %42, i8** %8, align 8
  store i8* %42, i8** %9, align 8
  br label %126

43:                                               ; preds = %5
  %44 = load i8*, i8** %8, align 8
  %45 = call i64 @mz_os_is_dir(i8* %44)
  %46 = load i64, i64* @MZ_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %16, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i8*, i8** %9, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i8*, i8** %18, align 8
  %66 = call i64 @mz_path_get_filename(i8* %65, i8** %17)
  %67 = load i64, i64* @MZ_OK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i8*, i8** %17, align 8
  store i8* %70, i8** %18, align 8
  br label %71

71:                                               ; preds = %69, %64
  br label %78

72:                                               ; preds = %60, %57
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = load i8*, i8** %18, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %18, align 8
  br label %78

78:                                               ; preds = %72, %71
  br label %79

79:                                               ; preds = %78, %54
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %8, align 8
  %91 = call i64 @mz_os_is_symlink(i8* %90)
  %92 = load i64, i64* @MZ_OK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i64, i64* %15, align 8
  store i64 %95, i64* %6, align 8
  br label %198

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %84, %79
  %98 = load i8*, i8** %18, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i8*, i8** %7, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %18, align 8
  %106 = call i64 @mz_zip_writer_add_file(i8* %103, i8* %104, i8* %105)
  store i64 %106, i64* %15, align 8
  br label %107

107:                                              ; preds = %102, %97
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = load i64, i64* %15, align 8
  store i64 %111, i64* %6, align 8
  br label %198

112:                                              ; preds = %107
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load i8*, i8** %8, align 8
  %119 = call i64 @mz_os_is_symlink(i8* %118)
  %120 = load i64, i64* @MZ_OK, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i64, i64* %15, align 8
  store i64 %123, i64* %6, align 8
  br label %198

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %112
  br label %126

126:                                              ; preds = %125, %29
  %127 = load i8*, i8** %8, align 8
  %128 = call i32* @mz_os_open_dir(i8* %127)
  store i32* %128, i32** %13, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i64, i64* @MZ_EXIST_ERROR, align 8
  store i64 %132, i64* %6, align 8
  br label %198

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %193, %180, %168, %150, %133
  %135 = load i32*, i32** %13, align 8
  %136 = call %struct.dirent* @mz_os_read_dir(i32* %135)
  store %struct.dirent* %136, %struct.dirent** %14, align 8
  %137 = icmp ne %struct.dirent* %136, null
  br i1 %137, label %138, label %194

138:                                              ; preds = %134
  %139 = load %struct.dirent*, %struct.dirent** %14, align 8
  %140 = getelementptr inbounds %struct.dirent, %struct.dirent* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @strcmp(i8* %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = load %struct.dirent*, %struct.dirent** %14, align 8
  %146 = getelementptr inbounds %struct.dirent, %struct.dirent* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @strcmp(i8* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144, %138
  br label %134

151:                                              ; preds = %144
  %152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  store i8 0, i8* %152, align 16
  %153 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %154 = load i8*, i8** %8, align 8
  %155 = call i32 @mz_path_combine(i8* %153, i8* %154, i32 1024)
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %157 = load %struct.dirent*, %struct.dirent** %14, align 8
  %158 = getelementptr inbounds %struct.dirent, %struct.dirent* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @mz_path_combine(i8* %156, i8* %159, i32 1024)
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %151
  %164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %165 = call i64 @mz_os_is_dir(i8* %164)
  %166 = load i64, i64* @MZ_OK, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %134

169:                                              ; preds = %163, %151
  %170 = load i8*, i8** %19, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %181

172:                                              ; preds = %169
  %173 = load %struct.dirent*, %struct.dirent** %14, align 8
  %174 = getelementptr inbounds %struct.dirent, %struct.dirent* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load i8*, i8** %19, align 8
  %177 = call i64 @mz_path_compare_wc(i8* %175, i8* %176, i32 1)
  %178 = load i64, i64* @MZ_OK, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  br label %134

181:                                              ; preds = %172, %169
  %182 = load i8*, i8** %7, align 8
  %183 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %184 = load i8*, i8** %9, align 8
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %11, align 4
  %187 = call i64 @mz_zip_writer_add_path(i8* %182, i8* %183, i8* %184, i32 %185, i32 %186)
  store i64 %187, i64* %15, align 8
  %188 = load i64, i64* %15, align 8
  %189 = load i64, i64* @MZ_OK, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %181
  %192 = load i64, i64* %15, align 8
  store i64 %192, i64* %6, align 8
  br label %198

193:                                              ; preds = %181
  br label %134

194:                                              ; preds = %134
  %195 = load i32*, i32** %13, align 8
  %196 = call i32 @mz_os_close_dir(i32* %195)
  %197 = load i64, i64* @MZ_OK, align 8
  store i64 %197, i64* %6, align 8
  br label %198

198:                                              ; preds = %194, %191, %131, %122, %110, %94
  %199 = load i64, i64* %6, align 8
  ret i64 %199
}

declare dso_local i32* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @mz_path_remove_filename(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @mz_os_is_dir(i8*) #1

declare dso_local i64 @mz_path_get_filename(i8*, i8**) #1

declare dso_local i64 @mz_os_is_symlink(i8*) #1

declare dso_local i64 @mz_zip_writer_add_file(i8*, i8*, i8*) #1

declare dso_local i32* @mz_os_open_dir(i8*) #1

declare dso_local %struct.dirent* @mz_os_read_dir(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mz_path_combine(i8*, i8*, i32) #1

declare dso_local i64 @mz_path_compare_wc(i8*, i8*, i32) #1

declare dso_local i32 @mz_os_close_dir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
