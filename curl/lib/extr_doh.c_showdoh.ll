; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_doh.c_showdoh.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_doh.c_showdoh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }
%struct.dohentry = type { i8*, i32, i32, %struct.TYPE_4__*, %struct.dohaddr* }
%struct.TYPE_4__ = type { i8* }
%struct.dohaddr = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }

@.str = private unnamed_addr constant [17 x i8] c"TTL: %u seconds\0A\00", align 1
@DNS_TYPE_A = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"DOH A: %u.%u.%u.%u\0A\00", align 1
@DNS_TYPE_AAAA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"DOH AAAA: \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s%02x%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"CNAME: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Curl_easy*, %struct.dohentry*)* @showdoh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showdoh(%struct.Curl_easy* %0, %struct.dohentry* %1) #0 {
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca %struct.dohentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dohaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store %struct.dohentry* %1, %struct.dohentry** %4, align 8
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %13 = load %struct.dohentry*, %struct.dohentry** %4, align 8
  %14 = getelementptr inbounds %struct.dohentry, %struct.dohentry* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %129, %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.dohentry*, %struct.dohentry** %4, align 8
  %20 = getelementptr inbounds %struct.dohentry, %struct.dohentry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %132

23:                                               ; preds = %17
  %24 = load %struct.dohentry*, %struct.dohentry** %4, align 8
  %25 = getelementptr inbounds %struct.dohentry, %struct.dohentry* %24, i32 0, i32 4
  %26 = load %struct.dohaddr*, %struct.dohaddr** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.dohaddr, %struct.dohaddr* %26, i64 %28
  store %struct.dohaddr* %29, %struct.dohaddr** %6, align 8
  %30 = load %struct.dohaddr*, %struct.dohaddr** %6, align 8
  %31 = getelementptr inbounds %struct.dohaddr, %struct.dohaddr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DNS_TYPE_A, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %23
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %37 = load %struct.dohaddr*, %struct.dohaddr** %6, align 8
  %38 = getelementptr inbounds %struct.dohaddr, %struct.dohaddr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.dohaddr*, %struct.dohaddr** %6, align 8
  %46 = getelementptr inbounds %struct.dohaddr, %struct.dohaddr* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dohaddr*, %struct.dohaddr** %6, align 8
  %52 = getelementptr inbounds %struct.dohaddr, %struct.dohaddr* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dohaddr*, %struct.dohaddr** %6, align 8
  %58 = getelementptr inbounds %struct.dohaddr, %struct.dohaddr* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %50, i32 %56, i32 %62)
  br label %128

64:                                               ; preds = %23
  %65 = load %struct.dohaddr*, %struct.dohaddr** %6, align 8
  %66 = getelementptr inbounds %struct.dohaddr, %struct.dohaddr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DNS_TYPE_AAAA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %127

70:                                               ; preds = %64
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %72 = call i32 (i8*, i64, i8*, ...) @msnprintf(i8* %71, i64 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 10
  store i8* %73, i8** %9, align 8
  store i64 118, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %120, %70
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 16
  br i1 %76, label %77, label %123

77:                                               ; preds = %74
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %84 = load %struct.dohentry*, %struct.dohentry** %4, align 8
  %85 = getelementptr inbounds %struct.dohentry, %struct.dohentry* %84, i32 0, i32 4
  %86 = load %struct.dohaddr*, %struct.dohaddr** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.dohaddr, %struct.dohaddr* %86, i64 %88
  %90 = getelementptr inbounds %struct.dohaddr, %struct.dohaddr* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dohentry*, %struct.dohentry** %4, align 8
  %98 = getelementptr inbounds %struct.dohentry, %struct.dohentry* %97, i32 0, i32 4
  %99 = load %struct.dohaddr*, %struct.dohaddr** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.dohaddr, %struct.dohaddr* %99, i64 %101
  %103 = getelementptr inbounds %struct.dohaddr, %struct.dohaddr* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i8*, i64, i8*, ...) @msnprintf(i8* %78, i64 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %83, i32 %96, i32 %110)
  %112 = load i8*, i8** %9, align 8
  %113 = call i64 @strlen(i8* %112)
  store i64 %113, i64* %11, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %10, align 8
  %116 = sub i64 %115, %114
  store i64 %116, i64* %10, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8* %119, i8** %9, align 8
  br label %120

120:                                              ; preds = %77
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 2
  store i32 %122, i32* %7, align 4
  br label %74

123:                                              ; preds = %74
  %124 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %125 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %126 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %123, %64
  br label %128

128:                                              ; preds = %127, %35
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %17

132:                                              ; preds = %17
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %150, %132
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.dohentry*, %struct.dohentry** %4, align 8
  %136 = getelementptr inbounds %struct.dohentry, %struct.dohentry* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %133
  %140 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %141 = load %struct.dohentry*, %struct.dohentry** %4, align 8
  %142 = getelementptr inbounds %struct.dohentry, %struct.dohentry* %141, i32 0, i32 3
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %139
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %133

153:                                              ; preds = %133
  ret void
}

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i8*, ...) #1

declare dso_local i32 @msnprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
