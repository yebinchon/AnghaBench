; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/installfile/extr_installfile.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/installfile/extr_installfile.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cSm:\00", align 1
@optarg = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Unrecognized mode %s\00", align 1
@optind = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_SYMLINK = common dso_local global i32 0, align 4
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"open(%s)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"fstat(%s)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s is not a regular file\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s.XXXXXX\00", align 1
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"mkstemp(%s)\00", align 1
@COPYFILE_DATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"fcopyfile(%s, %s)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"futimes(%s)\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"fchmod(%s, %ho)\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"rename(%s, %s)\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"close(dst)\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"close(src)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %16, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %17, align 8
  br label %22

22:                                               ; preds = %47, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %10, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  switch i32 %28, label %45 [
    i32 99, label %29
    i32 83, label %29
    i32 109, label %30
    i32 63, label %44
  ]

29:                                               ; preds = %27, %27
  br label %47

30:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  %31 = load i32, i32* @optarg, align 4
  %32 = call i8* @setmode(i32 %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EX_USAGE, align 4
  %37 = load i32, i32* @optarg, align 4
  %38 = call i32 @errx(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @getmode(i8* %40, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @free(i8* %42)
  br label %47

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %27, %44
  %46 = call i32 (...) @usage()
  br label %47

47:                                               ; preds = %45, %39, %29
  br label %22

48:                                               ; preds = %22
  %49 = load i64, i64* @optind, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  %54 = load i64, i64* @optind, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 %54
  store i8** %56, i8*** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = call i32 (...) @usage()
  br label %61

61:                                               ; preds = %59, %48
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %14, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %15, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i32, i32* @O_RDONLY, align 4
  %70 = load i32, i32* @O_SYMLINK, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @open(i8* %68, i32 %71, i32 0)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %61
  %76 = load i32, i32* @EX_NOINPUT, align 4
  %77 = load i8*, i8** %14, align 8
  %78 = call i32 (i32, i8*, ...) @err(i32 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %75, %61
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @fstat(i32 %80, %struct.stat* %6)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @EX_NOINPUT, align 4
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 (i32, i8*, ...) @err(i32 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @S_ISREG(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @EX_USAGE, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = call i32 (i32, i8*, ...) @err(i32 %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = trunc i64 %19 to i32
  %99 = load i8*, i8** %15, align 8
  %100 = call i32 @snprintf(i8* %21, i32 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %99)
  %101 = call i32 @mkstemp(i8* %21)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* @EX_UNAVAILABLE, align 4
  %106 = call i32 (i32, i8*, ...) @err(i32 %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %21)
  br label %107

107:                                              ; preds = %104, %97
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @COPYFILE_DATA, align 4
  %111 = call i32 @fcopyfile(i32 %108, i32 %109, i32* null, i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @EX_UNAVAILABLE, align 4
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 (i32, i8*, ...) @err(i32 %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %116, i8* %21)
  br label %118

118:                                              ; preds = %114, %107
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @futimes(i32 %119, i32* null)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @EX_UNAVAILABLE, align 4
  %125 = call i32 (i32, i8*, ...) @err(i32 %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %21)
  br label %126

126:                                              ; preds = %123, %118
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @fchmod(i32 %130, i32 %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load i32, i32* @EX_NOINPUT, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 (i32, i8*, ...) @err(i32 %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %21, i32 %137)
  br label %139

139:                                              ; preds = %135, %129
  br label %140

140:                                              ; preds = %139, %126
  %141 = load i8*, i8** %15, align 8
  %142 = call i32 @rename(i8* %21, i8* %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i32, i32* @EX_NOINPUT, align 4
  %147 = load i8*, i8** %15, align 8
  %148 = call i32 (i32, i8*, ...) @err(i32 %146, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %21, i8* %147)
  br label %149

149:                                              ; preds = %145, %140
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @close(i32 %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* @EX_NOINPUT, align 4
  %156 = call i32 (i32, i8*, ...) @err(i32 %155, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %149
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @close(i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i32, i32* @EX_NOINPUT, align 4
  %164 = call i32 (i32, i8*, ...) @err(i32 %163, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %157
  store i32 0, i32* %3, align 4
  %166 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i8* @setmode(i32) #2

declare dso_local i32 @errx(i32, i8*, i32) #2

declare dso_local i32 @getmode(i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @fcopyfile(i32, i32, i32*, i32) #2

declare dso_local i32 @futimes(i32, i32*) #2

declare dso_local i32 @fchmod(i32, i32) #2

declare dso_local i32 @rename(i8*, i8*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
