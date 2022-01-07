; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_sws.c_get_request.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_sws.c_get_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httprequest = type { i8*, i32, i32, i64, i64 }

@REQBUFSIZ = common dso_local global i32 0, align 4
@got_exit_signal = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Connection closed by client\00", align 1
@SOCKERRNO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"recv() returned error: (%d) %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Read %zd bytes\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Request would overflow buffer, closing connection\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Request buffer overflow, closing connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.httprequest*)* @get_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_request(i32 %0, %struct.httprequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.httprequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.httprequest* %1, %struct.httprequest** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %12 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %15 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @REQBUFSIZ, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %121

21:                                               ; preds = %2
  %22 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %23 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %30 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %35 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @sread(i32 %27, i8* %33, i32 %36)
  store i64 %37, i64* %8, align 8
  br label %53

38:                                               ; preds = %21
  %39 = load i32, i32* %4, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %42 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = load i32, i32* @REQBUFSIZ, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %49 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %47, %50
  %52 = call i64 @sread(i32 %39, i8* %45, i32 %51)
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %38, %26
  %54 = load i64, i64* @got_exit_signal, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %187

57:                                               ; preds = %53
  %58 = load i64, i64* %8, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %81

62:                                               ; preds = %57
  %63 = load i64, i64* %8, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load i32, i32* @SOCKERRNO, align 4
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @EWOULDBLOCK, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %65
  store i32 0, i32* %3, align 4
  br label %187

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @strerror(i32 %77)
  %79 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %78)
  store i32 1, i32* %6, align 4
  br label %80

80:                                               ; preds = %75, %62
  br label %81

81:                                               ; preds = %80, %60
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %87 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %7, align 8
  %92 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %93 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = call i32 @storerequest(i8* %91, i64 %95)
  store i32 -1, i32* %3, align 4
  br label %187

97:                                               ; preds = %81
  %98 = load i64, i64* %8, align 8
  %99 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %98)
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %102 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %109 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  store i8 0, i8* %112, align 1
  %113 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %114 = call i64 @ProcessRequest(%struct.httprequest* %113)
  %115 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %116 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %115, i32 0, i32 3
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* @got_exit_signal, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %97
  store i32 -1, i32* %3, align 4
  br label %187

120:                                              ; preds = %97
  br label %121

121:                                              ; preds = %120, %20
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %121
  %125 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %126 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @REQBUFSIZ, align 4
  %129 = sub nsw i32 %128, 1
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  %132 = load i64, i64* %8, align 8
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %131, %121
  %135 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* @REQBUFSIZ, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  store i8 0, i8* %140, align 1
  store i32 1, i32* %6, align 4
  br label %163

141:                                              ; preds = %131, %124
  %142 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %143 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @REQBUFSIZ, align 4
  %146 = sub nsw i32 %145, 1
  %147 = icmp sgt i32 %144, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %141
  %149 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i8*, i8** %7, align 8
  %151 = load i32, i32* @REQBUFSIZ, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  store i8 0, i8* %154, align 1
  store i32 1, i32* %6, align 4
  br label %162

155:                                              ; preds = %141
  %156 = load i8*, i8** %7, align 8
  %157 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %158 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %156, i64 %160
  store i8 0, i8* %161, align 1
  br label %162

162:                                              ; preds = %155, %148
  br label %163

163:                                              ; preds = %162, %134
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %163
  %167 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %168 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166, %163
  %172 = load i8*, i8** %7, align 8
  %173 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %174 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = call i32 @storerequest(i8* %172, i64 %176)
  br label %178

178:                                              ; preds = %171, %166
  %179 = load i64, i64* @got_exit_signal, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  store i32 -1, i32* %3, align 4
  br label %187

182:                                              ; preds = %178
  %183 = load i32, i32* %6, align 4
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 -1, i32 1
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %182, %181, %119, %84, %74, %56
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i64 @sread(i32, i8*, i32) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @storerequest(i8*, i64) #1

declare dso_local i64 @ProcessRequest(%struct.httprequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
