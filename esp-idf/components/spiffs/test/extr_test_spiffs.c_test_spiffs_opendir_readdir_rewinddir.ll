; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spiffs/test/extr_test_spiffs.c_test_spiffs_opendir_readdir_rewinddir.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spiffs/test/extr_test_spiffs.c_test_spiffs_opendir_readdir_rewinddir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8*, i64 }

@.str = private unnamed_addr constant [15 x i8] c"%s/inner/3.txt\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s/inner\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s/boo.bin\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s/2.txt\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s/1.txt\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"2\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\01\02\03\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"3\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"found '%s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"1.txt\00", align 1
@DT_REG = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"2.txt\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"inner/3.txt\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"boo.bin\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"unexpected directory entry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_spiffs_opendir_readdir_rewinddir(i8* %0) #0 {
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
  %15 = call i32 @snprintf(i8* %13, i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @snprintf(i8* %16, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @snprintf(i8* %19, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @snprintf(i8* %22, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @snprintf(i8* %25, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %26)
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
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %41 = call i32 @test_spiffs_create_file_with_text(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %43 = call i32 @test_spiffs_create_file_with_text(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %45 = call i32 @test_spiffs_create_file_with_text(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %47 = call i32 @test_spiffs_create_file_with_text(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %48 = load i8*, i8** %2, align 8
  %49 = call %struct.dirent* @opendir(i8* %48)
  store %struct.dirent* %49, %struct.dirent** %8, align 8
  %50 = load %struct.dirent*, %struct.dirent** %8, align 8
  %51 = call i32 @TEST_ASSERT_NOT_NULL(%struct.dirent* %50)
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %146, %1
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %147

55:                                               ; preds = %52
  %56 = load %struct.dirent*, %struct.dirent** %8, align 8
  %57 = call %struct.dirent* @readdir(%struct.dirent* %56)
  store %struct.dirent* %57, %struct.dirent** %11, align 8
  %58 = load %struct.dirent*, %struct.dirent** %11, align 8
  %59 = icmp ne %struct.dirent* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %147

61:                                               ; preds = %55
  %62 = load %struct.dirent*, %struct.dirent** %11, align 8
  %63 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %64)
  %66 = load %struct.dirent*, %struct.dirent** %11, align 8
  %67 = getelementptr inbounds %struct.dirent, %struct.dirent* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strcasecmp(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %61
  %72 = load %struct.dirent*, %struct.dirent** %11, align 8
  %73 = getelementptr inbounds %struct.dirent, %struct.dirent* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DT_REG, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @TEST_ASSERT_TRUE(i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 %80
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %81, align 8
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %146

84:                                               ; preds = %61
  %85 = load %struct.dirent*, %struct.dirent** %11, align 8
  %86 = getelementptr inbounds %struct.dirent, %struct.dirent* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strcasecmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load %struct.dirent*, %struct.dirent** %11, align 8
  %92 = getelementptr inbounds %struct.dirent, %struct.dirent* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @DT_REG, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @TEST_ASSERT_TRUE(i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 %99
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %100, align 8
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %145

103:                                              ; preds = %84
  %104 = load %struct.dirent*, %struct.dirent** %11, align 8
  %105 = getelementptr inbounds %struct.dirent, %struct.dirent* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strcasecmp(i8* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %103
  %110 = load %struct.dirent*, %struct.dirent** %11, align 8
  %111 = getelementptr inbounds %struct.dirent, %struct.dirent* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DT_REG, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @TEST_ASSERT_TRUE(i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 %118
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %119, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %144

122:                                              ; preds = %103
  %123 = load %struct.dirent*, %struct.dirent** %11, align 8
  %124 = getelementptr inbounds %struct.dirent, %struct.dirent* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strcasecmp(i8* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %122
  %129 = load %struct.dirent*, %struct.dirent** %11, align 8
  %130 = getelementptr inbounds %struct.dirent, %struct.dirent* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @DT_REG, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @TEST_ASSERT_TRUE(i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 %137
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %138, align 8
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %143

141:                                              ; preds = %122
  %142 = call i32 @TEST_FAIL_MESSAGE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %128
  br label %144

144:                                              ; preds = %143, %109
  br label %145

145:                                              ; preds = %144, %90
  br label %146

146:                                              ; preds = %145, %71
  br label %52

147:                                              ; preds = %60, %52
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @TEST_ASSERT_EQUAL(i32 %148, i32 4)
  %150 = load %struct.dirent*, %struct.dirent** %8, align 8
  %151 = call i32 @rewinddir(%struct.dirent* %150)
  %152 = load %struct.dirent*, %struct.dirent** %8, align 8
  %153 = call %struct.dirent* @readdir(%struct.dirent* %152)
  store %struct.dirent* %153, %struct.dirent** %12, align 8
  %154 = load %struct.dirent*, %struct.dirent** %12, align 8
  %155 = call i32 @TEST_ASSERT_NOT_NULL(%struct.dirent* %154)
  %156 = load %struct.dirent*, %struct.dirent** %12, align 8
  %157 = getelementptr inbounds %struct.dirent, %struct.dirent* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %160 = load i8*, i8** %159, align 16
  %161 = call i32 @strcasecmp(i8* %158, i8* %160)
  %162 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %161)
  %163 = load %struct.dirent*, %struct.dirent** %8, align 8
  %164 = call i32 @seekdir(%struct.dirent* %163, i32 3)
  %165 = load %struct.dirent*, %struct.dirent** %8, align 8
  %166 = call %struct.dirent* @readdir(%struct.dirent* %165)
  store %struct.dirent* %166, %struct.dirent** %12, align 8
  %167 = load %struct.dirent*, %struct.dirent** %12, align 8
  %168 = call i32 @TEST_ASSERT_NOT_NULL(%struct.dirent* %167)
  %169 = load %struct.dirent*, %struct.dirent** %12, align 8
  %170 = getelementptr inbounds %struct.dirent, %struct.dirent* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 3
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @strcasecmp(i8* %171, i8* %173)
  %175 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %174)
  %176 = load %struct.dirent*, %struct.dirent** %8, align 8
  %177 = call i32 @seekdir(%struct.dirent* %176, i32 1)
  %178 = load %struct.dirent*, %struct.dirent** %8, align 8
  %179 = call %struct.dirent* @readdir(%struct.dirent* %178)
  store %struct.dirent* %179, %struct.dirent** %12, align 8
  %180 = load %struct.dirent*, %struct.dirent** %12, align 8
  %181 = call i32 @TEST_ASSERT_NOT_NULL(%struct.dirent* %180)
  %182 = load %struct.dirent*, %struct.dirent** %12, align 8
  %183 = getelementptr inbounds %struct.dirent, %struct.dirent* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 1
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @strcasecmp(i8* %184, i8* %186)
  %188 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %187)
  %189 = load %struct.dirent*, %struct.dirent** %8, align 8
  %190 = call i32 @seekdir(%struct.dirent* %189, i32 2)
  %191 = load %struct.dirent*, %struct.dirent** %8, align 8
  %192 = call %struct.dirent* @readdir(%struct.dirent* %191)
  store %struct.dirent* %192, %struct.dirent** %12, align 8
  %193 = load %struct.dirent*, %struct.dirent** %12, align 8
  %194 = call i32 @TEST_ASSERT_NOT_NULL(%struct.dirent* %193)
  %195 = load %struct.dirent*, %struct.dirent** %12, align 8
  %196 = getelementptr inbounds %struct.dirent, %struct.dirent* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 2
  %199 = load i8*, i8** %198, align 16
  %200 = call i32 @strcasecmp(i8* %197, i8* %199)
  %201 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %200)
  %202 = load %struct.dirent*, %struct.dirent** %8, align 8
  %203 = call i32 @closedir(%struct.dirent* %202)
  %204 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %203)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @rmdir(i8*) #1

declare dso_local i32 @test_spiffs_create_file_with_text(i8*, i8*) #1

declare dso_local %struct.dirent* @opendir(i8*) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(%struct.dirent*) #1

declare dso_local %struct.dirent* @readdir(%struct.dirent*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @TEST_ASSERT_TRUE(i32) #1

declare dso_local i32 @TEST_FAIL_MESSAGE(i8*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @rewinddir(%struct.dirent*) #1

declare dso_local i32 @seekdir(%struct.dirent*, i32) #1

declare dso_local i32 @closedir(%struct.dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
