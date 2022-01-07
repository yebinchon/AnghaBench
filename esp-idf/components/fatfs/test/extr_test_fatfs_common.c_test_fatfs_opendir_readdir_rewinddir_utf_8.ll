; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_opendir_readdir_rewinddir_utf_8.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_opendir_readdir_rewinddir_utf_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8*, i64 }

@.str = private unnamed_addr constant [33 x i8] c"%s/\E5\86\85\E9\83\A8\E7\9B\AE\E5\BD\95/\E5\86\85\E9\83\A8\E6\96\87\E4\BB\B6.txt\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s/\E5\86\85\E9\83\A8\E7\9B\AE\E5\BD\95\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s/\E6\96\87\E4\BB\B6\E4\B8\89.bin\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%s/\E6\96\87\E4\BB\B6\E4\BA\8C.txt\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s/\E6\96\87\E4\BB\B6\E4\B8\80.txt\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\E4\B8\80\E5\8F\B7\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\E4\BA\8C\E5\8F\B7\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\00\E4\B8\80\00\E4\BA\8C\00\E4\B8\89\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\E4\B8\89\E5\8F\B7\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"found '%s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"\E6\96\87\E4\BB\B6\E4\B8\80.txt\00", align 1
@DT_REG = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"\E6\96\87\E4\BB\B6\E4\BA\8C.txt\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\E5\86\85\E9\83\A8\E7\9B\AE\E5\BD\95\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"\E6\96\87\E4\BB\B6\E4\B8\89.bin\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"unexpected directory entry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fatfs_opendir_readdir_rewinddir_utf_8(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8*], align 16
  %11 = alloca %struct.dirent*, align 8
  %12 = alloca %struct.dirent*, align 8
  store i8* %0, i8** %2, align 8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @snprintf(i8* %13, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @snprintf(i8* %16, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @snprintf(i8* %19, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @snprintf(i8* %22, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @snprintf(i8* %25, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %26)
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %29 = call i32 @unlink(i8* %28)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %31 = call i32 @rmdir(i8* %30)
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %33 = call i32 @unlink(i8* %32)
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %35 = call i32 @unlink(i8* %34)
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %37 = call i32 @unlink(i8* %36)
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @rmdir(i8* %38)
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @mkdir(i8* %40, i32 493)
  %42 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %41)
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %44 = call i32 @test_fatfs_create_file_with_text(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %46 = call i32 @test_fatfs_create_file_with_text(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %48 = call i32 @test_fatfs_create_file_with_text(i8* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %50 = call i32 @mkdir(i8* %49, i32 493)
  %51 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %50)
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %53 = call i32 @test_fatfs_create_file_with_text(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %54 = load i8*, i8** %2, align 8
  %55 = call %struct.dirent* @opendir(i8* %54)
  store %struct.dirent* %55, %struct.dirent** %8, align 8
  %56 = load %struct.dirent*, %struct.dirent** %8, align 8
  %57 = call i32 @TEST_ASSERT_NOT_NULL(%struct.dirent* %56)
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %152, %1
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %153

61:                                               ; preds = %58
  %62 = load %struct.dirent*, %struct.dirent** %8, align 8
  %63 = call %struct.dirent* @readdir(%struct.dirent* %62)
  store %struct.dirent* %63, %struct.dirent** %11, align 8
  %64 = load %struct.dirent*, %struct.dirent** %11, align 8
  %65 = icmp ne %struct.dirent* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %153

67:                                               ; preds = %61
  %68 = load %struct.dirent*, %struct.dirent** %11, align 8
  %69 = getelementptr inbounds %struct.dirent, %struct.dirent* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %70)
  %72 = load %struct.dirent*, %struct.dirent** %11, align 8
  %73 = getelementptr inbounds %struct.dirent, %struct.dirent* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @strcasecmp(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %67
  %78 = load %struct.dirent*, %struct.dirent** %11, align 8
  %79 = getelementptr inbounds %struct.dirent, %struct.dirent* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DT_REG, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @TEST_ASSERT_TRUE(i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 %86
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8** %87, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %152

90:                                               ; preds = %67
  %91 = load %struct.dirent*, %struct.dirent** %11, align 8
  %92 = getelementptr inbounds %struct.dirent, %struct.dirent* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strcasecmp(i8* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load %struct.dirent*, %struct.dirent** %11, align 8
  %98 = getelementptr inbounds %struct.dirent, %struct.dirent* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DT_REG, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @TEST_ASSERT_TRUE(i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 %105
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %151

109:                                              ; preds = %90
  %110 = load %struct.dirent*, %struct.dirent** %11, align 8
  %111 = getelementptr inbounds %struct.dirent, %struct.dirent* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strcasecmp(i8* %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %109
  %116 = load %struct.dirent*, %struct.dirent** %11, align 8
  %117 = getelementptr inbounds %struct.dirent, %struct.dirent* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @DT_DIR, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @TEST_ASSERT_TRUE(i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 %124
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %125, align 8
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %150

128:                                              ; preds = %109
  %129 = load %struct.dirent*, %struct.dirent** %11, align 8
  %130 = getelementptr inbounds %struct.dirent, %struct.dirent* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @strcasecmp(i8* %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %128
  %135 = load %struct.dirent*, %struct.dirent** %11, align 8
  %136 = getelementptr inbounds %struct.dirent, %struct.dirent* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @DT_REG, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @TEST_ASSERT_TRUE(i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 %143
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8** %144, align 8
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %149

147:                                              ; preds = %128
  %148 = call i32 @TEST_FAIL_MESSAGE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %134
  br label %150

150:                                              ; preds = %149, %115
  br label %151

151:                                              ; preds = %150, %96
  br label %152

152:                                              ; preds = %151, %77
  br label %58

153:                                              ; preds = %66, %58
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @TEST_ASSERT_EQUAL(i32 %154, i32 4)
  %156 = load %struct.dirent*, %struct.dirent** %8, align 8
  %157 = call i32 @rewinddir(%struct.dirent* %156)
  %158 = load %struct.dirent*, %struct.dirent** %8, align 8
  %159 = call %struct.dirent* @readdir(%struct.dirent* %158)
  store %struct.dirent* %159, %struct.dirent** %12, align 8
  %160 = load %struct.dirent*, %struct.dirent** %12, align 8
  %161 = call i32 @TEST_ASSERT_NOT_NULL(%struct.dirent* %160)
  %162 = load %struct.dirent*, %struct.dirent** %12, align 8
  %163 = getelementptr inbounds %struct.dirent, %struct.dirent* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %166 = load i8*, i8** %165, align 16
  %167 = call i32 @strcasecmp(i8* %164, i8* %166)
  %168 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %167)
  %169 = load %struct.dirent*, %struct.dirent** %8, align 8
  %170 = call i32 @seekdir(%struct.dirent* %169, i32 3)
  %171 = load %struct.dirent*, %struct.dirent** %8, align 8
  %172 = call %struct.dirent* @readdir(%struct.dirent* %171)
  store %struct.dirent* %172, %struct.dirent** %12, align 8
  %173 = load %struct.dirent*, %struct.dirent** %12, align 8
  %174 = call i32 @TEST_ASSERT_NOT_NULL(%struct.dirent* %173)
  %175 = load %struct.dirent*, %struct.dirent** %12, align 8
  %176 = getelementptr inbounds %struct.dirent, %struct.dirent* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 3
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @strcasecmp(i8* %177, i8* %179)
  %181 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %180)
  %182 = load %struct.dirent*, %struct.dirent** %8, align 8
  %183 = call i32 @seekdir(%struct.dirent* %182, i32 1)
  %184 = load %struct.dirent*, %struct.dirent** %8, align 8
  %185 = call %struct.dirent* @readdir(%struct.dirent* %184)
  store %struct.dirent* %185, %struct.dirent** %12, align 8
  %186 = load %struct.dirent*, %struct.dirent** %12, align 8
  %187 = call i32 @TEST_ASSERT_NOT_NULL(%struct.dirent* %186)
  %188 = load %struct.dirent*, %struct.dirent** %12, align 8
  %189 = getelementptr inbounds %struct.dirent, %struct.dirent* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 1
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @strcasecmp(i8* %190, i8* %192)
  %194 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %193)
  %195 = load %struct.dirent*, %struct.dirent** %8, align 8
  %196 = call i32 @seekdir(%struct.dirent* %195, i32 2)
  %197 = load %struct.dirent*, %struct.dirent** %8, align 8
  %198 = call %struct.dirent* @readdir(%struct.dirent* %197)
  store %struct.dirent* %198, %struct.dirent** %12, align 8
  %199 = load %struct.dirent*, %struct.dirent** %12, align 8
  %200 = call i32 @TEST_ASSERT_NOT_NULL(%struct.dirent* %199)
  %201 = load %struct.dirent*, %struct.dirent** %12, align 8
  %202 = getelementptr inbounds %struct.dirent, %struct.dirent* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 2
  %205 = load i8*, i8** %204, align 16
  %206 = call i32 @strcasecmp(i8* %203, i8* %205)
  %207 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %206)
  %208 = load %struct.dirent*, %struct.dirent** %8, align 8
  %209 = call i32 @closedir(%struct.dirent* %208)
  %210 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %209)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @rmdir(i8*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @test_fatfs_create_file_with_text(i8*, i8*) #1

declare dso_local %struct.dirent* @opendir(i8*) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(%struct.dirent*) #1

declare dso_local %struct.dirent* @readdir(%struct.dirent*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @TEST_ASSERT_TRUE(i32) #1

declare dso_local i32 @TEST_FAIL_MESSAGE(i8*) #1

declare dso_local i32 @rewinddir(%struct.dirent*) #1

declare dso_local i32 @seekdir(%struct.dirent*, i32) #1

declare dso_local i32 @closedir(%struct.dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
