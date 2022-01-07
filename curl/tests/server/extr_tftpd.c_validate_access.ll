; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_validate_access.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_validate_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testcase = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"trying to get file: %s mode %x\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"verifiedserver\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"WE ROOLZ: %ld\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Are-we-friendly question received\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"requested test number %ld part %ld\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"data%ld\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"fopen() failed with error: %d %s\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Error opening file: %s\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Couldn't open test file: %s\00", align 1
@EACCESS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"getpart() failed with error: %d\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"no slash found in path\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"file opened and all is good\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.testcase*, i8*, i32)* @validate_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_access(%struct.testcase* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.testcase*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca [80 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.testcase* %0, %struct.testcase** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strncmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 14)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %3
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %27 = call i64 (...) @getpid()
  %28 = call i64 @msnprintf(i8* %26, i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  store i64 %28, i64* %10, align 8
  %29 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %31 = call i64 @strdup(i8* %30)
  %32 = load %struct.testcase*, %struct.testcase** %5, align 8
  %33 = getelementptr inbounds %struct.testcase, %struct.testcase* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load %struct.testcase*, %struct.testcase** %5, align 8
  %35 = getelementptr inbounds %struct.testcase, %struct.testcase* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.testcase*, %struct.testcase** %5, align 8
  %38 = getelementptr inbounds %struct.testcase, %struct.testcase* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.testcase*, %struct.testcase** %5, align 8
  %41 = getelementptr inbounds %struct.testcase, %struct.testcase* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.testcase*, %struct.testcase** %5, align 8
  %44 = getelementptr inbounds %struct.testcase, %struct.testcase* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  store i32 0, i32* %4, align 4
  br label %165

45:                                               ; preds = %3
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @strrchr(i8* %46, i8 signext 47)
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %160

50:                                               ; preds = %45
  %51 = bitcast [80 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %51, i8 0, i64 80, i1 false)
  %52 = bitcast i8* %51 to [80 x i8]*
  %53 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i32 0, i32 0
  store i8 100, i8* %53, align 16
  %54 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i32 0, i32 1
  store i8 97, i8* %54, align 1
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i32 0, i32 2
  store i8 116, i8* %55, align 2
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i32 0, i32 3
  store i8 97, i8* %56, align 1
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %8, align 8
  br label %59

59:                                               ; preds = %72, %50
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @ISDIGIT(i8 signext %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %64, %59
  %71 = phi i1 [ false, %59 ], [ %69, %64 ]
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %8, align 8
  br label %59

75:                                               ; preds = %70
  %76 = load i8*, i8** %8, align 8
  %77 = call i64 @strtol(i8* %76, i8** %8, i32 10)
  store i64 %77, i64* %13, align 8
  %78 = load i64, i64* %13, align 8
  %79 = icmp sgt i64 %78, 10000
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i64, i64* %13, align 8
  %82 = srem i64 %81, 10000
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = sdiv i64 %83, 10000
  store i64 %84, i64* %13, align 8
  br label %86

85:                                               ; preds = %75
  store i64 0, i64* %12, align 8
  br label %86

86:                                               ; preds = %85, %80
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %87, i64 %88)
  %90 = load i64, i64* %13, align 8
  %91 = load %struct.testcase*, %struct.testcase** %5, align 8
  %92 = getelementptr inbounds %struct.testcase, %struct.testcase* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  %93 = load %struct.testcase*, %struct.testcase** %5, align 8
  %94 = call i32 @parse_servercmd(%struct.testcase* %93)
  %95 = load i64, i64* %13, align 8
  %96 = call i8* @test2file(i64 %95)
  store i8* %96, i8** %14, align 8
  %97 = load i64, i64* %12, align 8
  %98 = icmp ne i64 0, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %86
  %100 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %101 = load i64, i64* %12, align 8
  %102 = call i64 @msnprintf(i8* %100, i32 80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %99, %86
  %104 = load i8*, i8** %14, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %157

106:                                              ; preds = %103
  %107 = load i8*, i8** %14, align 8
  %108 = call i32* @fopen(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %108, i32** %15, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %122, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @errno, align 4
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @strerror(i32 %114)
  %116 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %113, i32 %115)
  %117 = load i8*, i8** %14, align 8
  %118 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %117)
  %119 = load i8*, i8** %14, align 8
  %120 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %119)
  %121 = load i32, i32* @EACCESS, align 4
  store i32 %121, i32* %4, align 4
  br label %165

122:                                              ; preds = %106
  %123 = load %struct.testcase*, %struct.testcase** %5, align 8
  %124 = getelementptr inbounds %struct.testcase, %struct.testcase* %123, i32 0, i32 3
  %125 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %126 = load i32*, i32** %15, align 8
  %127 = call i32 @getpart(i64* %124, i64* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %125, i32* %126)
  store i32 %127, i32* %18, align 4
  %128 = load i32*, i32** %15, align 8
  %129 = call i32 @fclose(i32* %128)
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %122
  %133 = load i32, i32* %18, align 4
  %134 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @EACCESS, align 4
  store i32 %135, i32* %4, align 4
  br label %165

136:                                              ; preds = %122
  %137 = load %struct.testcase*, %struct.testcase** %5, align 8
  %138 = getelementptr inbounds %struct.testcase, %struct.testcase* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %136
  %142 = load %struct.testcase*, %struct.testcase** %5, align 8
  %143 = getelementptr inbounds %struct.testcase, %struct.testcase* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.testcase*, %struct.testcase** %5, align 8
  %146 = getelementptr inbounds %struct.testcase, %struct.testcase* %145, i32 0, i32 4
  store i64 %144, i64* %146, align 8
  %147 = load i64, i64* %17, align 8
  %148 = load %struct.testcase*, %struct.testcase** %5, align 8
  %149 = getelementptr inbounds %struct.testcase, %struct.testcase* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* %17, align 8
  %151 = load %struct.testcase*, %struct.testcase** %5, align 8
  %152 = getelementptr inbounds %struct.testcase, %struct.testcase* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  br label %155

153:                                              ; preds = %136
  %154 = load i32, i32* @EACCESS, align 4
  store i32 %154, i32* %4, align 4
  br label %165

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %155
  br label %159

157:                                              ; preds = %103
  %158 = load i32, i32* @EACCESS, align 4
  store i32 %158, i32* %4, align 4
  br label %165

159:                                              ; preds = %156
  br label %163

160:                                              ; preds = %45
  %161 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %162 = load i32, i32* @EACCESS, align 4
  store i32 %162, i32* %4, align 4
  br label %165

163:                                              ; preds = %159
  %164 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %163, %160, %157, %153, %132, %111, %25
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @msnprintf(i8*, i32, i8*, i64) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @parse_servercmd(%struct.testcase*) #1

declare dso_local i8* @test2file(i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @getpart(i64*, i64*, i8*, i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
