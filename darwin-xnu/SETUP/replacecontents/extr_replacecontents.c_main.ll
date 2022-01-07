; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/replacecontents/extr_replacecontents.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/replacecontents/extr_replacecontents.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"malloc() failed\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@DEFFILEMODE = common dso_local global i32 0, align 4
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"open(%s)\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"fstat(%s)\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"%s is not a regular file\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"malloc(%lu) failed\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"read() failed\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"short read of file\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"close() failed\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"ftruncate() failed\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"write() failed\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"short write of file\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"close(dst)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %12, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @usage()
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %12, align 8
  store i32 2, i32* %15, align 4
  br label %24

24:                                               ; preds = %38, %20
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = add nsw i64 %34, 1
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i8* @malloc(i64 %44)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EX_UNAVAILABLE, align 4
  %50 = call i32 (i32, i8*, ...) @err(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 0, i8* %53, align 1
  store i32 2, i32* %15, align 4
  br label %54

54:                                               ; preds = %80, %51
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load i8*, i8** %7, align 8
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @strlcat(i8* %59, i8* %64, i64 %65)
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %68, 1
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @strlcat(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  br label %79

75:                                               ; preds = %58
  %76 = load i8*, i8** %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @strlcat(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %54

83:                                               ; preds = %54
  %84 = load i8*, i8** %12, align 8
  %85 = load i32, i32* @O_RDWR, align 4
  %86 = load i32, i32* @O_CREAT, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @O_APPEND, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @DEFFILEMODE, align 4
  %91 = call i32 @open(i8* %84, i32 %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %83
  %95 = load i32, i32* @EX_NOINPUT, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 (i32, i8*, ...) @err(i32 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %94, %83
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @fstat(i32 %99, %struct.stat* %6)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @EX_NOINPUT, align 4
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 (i32, i8*, ...) @err(i32 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %103, %98
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @S_ISREG(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @EX_USAGE, align 4
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 (i32, i8*, ...) @err(i32 %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %112, %107
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %8, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %169

122:                                              ; preds = %116
  %123 = load i64, i64* %8, align 8
  %124 = call i8* @malloc(i64 %123)
  store i8* %124, i8** %9, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* @EX_UNAVAILABLE, align 4
  %129 = load i64, i64* %8, align 8
  %130 = call i32 (i32, i8*, ...) @err(i32 %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %129)
  br label %131

131:                                              ; preds = %127, %122
  %132 = load i32, i32* %11, align 4
  %133 = load i8*, i8** %9, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @read(i32 %132, i8* %133, i64 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* @EX_UNAVAILABLE, align 4
  %140 = call i32 (i32, i8*, ...) @err(i32 %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %150

141:                                              ; preds = %131
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %8, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i32, i32* @EX_UNAVAILABLE, align 4
  %148 = call i32 @errx(i32 %147, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %141
  br label %150

150:                                              ; preds = %149, %138
  %151 = load i8*, i8** %9, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = load i64, i64* %8, align 8
  %154 = call i64 @memcmp(i8* %151, i8* %152, i64 %153)
  %155 = icmp eq i64 0, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load i8*, i8** %9, align 8
  %158 = call i32 @free(i8* %157)
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @close(i32 %159)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32, i32* @EX_UNAVAILABLE, align 4
  %165 = call i32 (i32, i8*, ...) @err(i32 %164, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %156
  %167 = call i32 @exit(i32 0) #3
  unreachable

168:                                              ; preds = %150
  br label %169

169:                                              ; preds = %168, %121
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @ftruncate(i32 %170, i32 0)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load i32, i32* @EX_UNAVAILABLE, align 4
  %176 = call i32 (i32, i8*, ...) @err(i32 %175, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %169
  %178 = load i32, i32* %11, align 4
  %179 = load i8*, i8** %7, align 8
  %180 = load i64, i64* %8, align 8
  %181 = call i32 @write(i32 %178, i8* %179, i64 %180)
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %14, align 4
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = load i32, i32* @EX_UNAVAILABLE, align 4
  %186 = call i32 (i32, i8*, ...) @err(i32 %185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %196

187:                                              ; preds = %177
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* %8, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load i32, i32* @EX_UNAVAILABLE, align 4
  %194 = call i32 @errx(i32 %193, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  br label %195

195:                                              ; preds = %192, %187
  br label %196

196:                                              ; preds = %195, %184
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @close(i32 %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load i32, i32* @EX_NOINPUT, align 4
  %203 = call i32 (i32, i8*, ...) @err(i32 %202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %204

204:                                              ; preds = %201, %196
  ret i32 0
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
