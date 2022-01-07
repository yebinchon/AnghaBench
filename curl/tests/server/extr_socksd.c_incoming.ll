; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_socksd.c_incoming.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_socksd.c_incoming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perclient = type { i32, i64, i64, i64, i64 }

@got_exit_signal = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"signalled to die, exiting...\00", align 1
@FALSE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"select() failed with error: (%d) %s\00", align 1
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@SOCKERRNO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"accept(%d, NULL, NULL) failed with error: (%d) %s\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"====> Client connect, fd %d. Read config from %s\00", align 1
@configfile = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"====> Client disconnect\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"====> Tunnel transfer\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"SOCKS transfer completed. Bytes: < %zu > %zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @incoming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @incoming(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.perclient], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.perclient*, align 8
  %18 = alloca %struct.perclient*, align 8
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %7, align 4
  %19 = getelementptr inbounds [2 x %struct.perclient], [2 x %struct.perclient]* %8, i64 0, i64 0
  %20 = call i32 @memset(%struct.perclient* %19, i32 0, i32 80)
  %21 = load i64, i64* @got_exit_signal, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %218

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %213, %26
  store i32 0, i32* %11, align 4
  %28 = load i64, i64* %3, align 8
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %13, align 4
  %31 = call i32 @FD_ZERO(i32* %4)
  %32 = call i32 @FD_ZERO(i32* %5)
  %33 = call i32 @FD_ZERO(i32* %6)
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @FD_SET(i64 %34, i32* %4)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %78, %27
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %81

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x %struct.perclient], [2 x %struct.perclient]* %8, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.perclient, %struct.perclient* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x %struct.perclient], [2 x %struct.perclient]* %8, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.perclient, %struct.perclient* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = call i32 @FD_SET(i64 %52, i32* %4)
  %54 = load i64, i64* %14, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %13, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i64, i64* %14, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %58, %46
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x %struct.perclient], [2 x %struct.perclient]* %8, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.perclient, %struct.perclient* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %14, align 8
  %67 = load i64, i64* %14, align 8
  %68 = call i32 @FD_SET(i64 %67, i32* %4)
  %69 = load i64, i64* %14, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* %13, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load i64, i64* %14, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %73, %61
  br label %77

77:                                               ; preds = %76, %39
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %36

81:                                               ; preds = %36
  br label %82

82:                                               ; preds = %99, %81
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @select(i32 %84, i32* %4, i32* %5, i32* %6, i32* null)
  store i32 %85, i32* %10, align 4
  %86 = load i64, i64* @got_exit_signal, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %2, align 4
  br label %218

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* @errno, align 4
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* @EINTR, align 4
  %98 = icmp eq i32 %96, %97
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi i1 [ false, %92 ], [ %98, %95 ]
  br i1 %100, label %82, label %101

101:                                              ; preds = %99
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i64 @strerror(i32 %106)
  %108 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %105, i64 %107)
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %2, align 4
  br label %218

110:                                              ; preds = %101
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %111, 2
  br i1 %112, label %113, label %170

113:                                              ; preds = %110
  %114 = load i64, i64* %12, align 8
  %115 = call i64 @FD_ISSET(i64 %114, i32* %4)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %170

117:                                              ; preds = %113
  %118 = load i64, i64* %12, align 8
  %119 = call i64 @accept(i64 %118, i32* null, i32* null)
  store i64 %119, i64* %15, align 8
  %120 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %121 = load i64, i64* %15, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load i32, i32* @SOCKERRNO, align 4
  store i32 %124, i32* %11, align 4
  %125 = load i64, i64* %12, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i64 @strerror(i32 %127)
  %129 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %125, i32 %126, i64 %128)
  br label %169

130:                                              ; preds = %117
  %131 = load i64, i64* %15, align 8
  %132 = load i64, i64* @configfile, align 8
  %133 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %131, i64 %132)
  %134 = load i64, i64* %15, align 8
  %135 = call i64 @sockit(i64 %134)
  store i64 %135, i64* %16, align 8
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i64, i64* %15, align 8
  %142 = call i32 @sclose(i64 %141)
  br label %168

143:                                              ; preds = %130
  %144 = getelementptr inbounds [2 x %struct.perclient], [2 x %struct.perclient]* %8, i64 0, i64 0
  store %struct.perclient* %144, %struct.perclient** %17, align 8
  %145 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %146 = getelementptr inbounds [2 x %struct.perclient], [2 x %struct.perclient]* %8, i64 0, i64 0
  %147 = getelementptr inbounds %struct.perclient, %struct.perclient* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 16
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = getelementptr inbounds [2 x %struct.perclient], [2 x %struct.perclient]* %8, i64 0, i64 1
  store %struct.perclient* %151, %struct.perclient** %17, align 8
  br label %152

152:                                              ; preds = %150, %143
  %153 = load %struct.perclient*, %struct.perclient** %17, align 8
  %154 = getelementptr inbounds %struct.perclient, %struct.perclient* %153, i32 0, i32 3
  store i64 0, i64* %154, align 8
  %155 = load %struct.perclient*, %struct.perclient** %17, align 8
  %156 = getelementptr inbounds %struct.perclient, %struct.perclient* %155, i32 0, i32 4
  store i64 0, i64* %156, align 8
  %157 = load i64, i64* %15, align 8
  %158 = load %struct.perclient*, %struct.perclient** %17, align 8
  %159 = getelementptr inbounds %struct.perclient, %struct.perclient* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = load i64, i64* %16, align 8
  %161 = load %struct.perclient*, %struct.perclient** %17, align 8
  %162 = getelementptr inbounds %struct.perclient, %struct.perclient* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  %163 = load i32, i32* @TRUE, align 4
  %164 = load %struct.perclient*, %struct.perclient** %17, align 8
  %165 = getelementptr inbounds %struct.perclient, %struct.perclient* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %152, %139
  br label %169

169:                                              ; preds = %168, %123
  br label %170

170:                                              ; preds = %169, %113, %110
  store i32 0, i32* %9, align 4
  br label %171

171:                                              ; preds = %209, %170
  %172 = load i32, i32* %9, align 4
  %173 = icmp slt i32 %172, 2
  br i1 %173, label %174, label %212

174:                                              ; preds = %171
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [2 x %struct.perclient], [2 x %struct.perclient]* %8, i64 0, i64 %176
  store %struct.perclient* %177, %struct.perclient** %18, align 8
  %178 = load %struct.perclient*, %struct.perclient** %18, align 8
  %179 = getelementptr inbounds %struct.perclient, %struct.perclient* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %208

182:                                              ; preds = %174
  %183 = load %struct.perclient*, %struct.perclient** %18, align 8
  %184 = call i64 @tunnel(%struct.perclient* %183, i32* %4)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %207

186:                                              ; preds = %182
  %187 = load %struct.perclient*, %struct.perclient** %18, align 8
  %188 = getelementptr inbounds %struct.perclient, %struct.perclient* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.perclient*, %struct.perclient** %18, align 8
  %191 = getelementptr inbounds %struct.perclient, %struct.perclient* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i64 %189, i64 %192)
  %194 = load %struct.perclient*, %struct.perclient** %18, align 8
  %195 = getelementptr inbounds %struct.perclient, %struct.perclient* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @sclose(i64 %196)
  %198 = load %struct.perclient*, %struct.perclient** %18, align 8
  %199 = getelementptr inbounds %struct.perclient, %struct.perclient* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @sclose(i64 %200)
  %202 = load i32, i32* @FALSE, align 4
  %203 = load %struct.perclient*, %struct.perclient** %18, align 8
  %204 = getelementptr inbounds %struct.perclient, %struct.perclient* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %7, align 4
  br label %207

207:                                              ; preds = %186, %182
  br label %208

208:                                              ; preds = %207, %174
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %9, align 4
  br label %171

212:                                              ; preds = %171
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %7, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %27, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* @TRUE, align 4
  store i32 %217, i32* %2, align 4
  br label %218

218:                                              ; preds = %216, %104, %88, %23
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i32 @memset(%struct.perclient*, i32, i32) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @strerror(i32) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i64 @accept(i64, i32*, i32*) #1

declare dso_local i64 @sockit(i64) #1

declare dso_local i32 @sclose(i64) #1

declare dso_local i64 @tunnel(%struct.perclient*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
