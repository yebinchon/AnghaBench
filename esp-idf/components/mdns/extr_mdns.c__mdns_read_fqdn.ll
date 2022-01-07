; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_read_fqdn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_read_fqdn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32, i8*, i8*, i8* }

@MDNS_DEFAULT_DOMAIN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"ip6\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"in-addr\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@MDNS_SUB_STR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_3__*, i8*)* @_mdns_read_fqdn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_mdns_read_fqdn(i32* %0, i32* %1, %struct.TYPE_3__* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i8*], align 16
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %173, %4
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* %10, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %174

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %10, align 8
  %33 = getelementptr inbounds i32, i32* %30, i64 %31
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 192
  br i1 %36, label %37, label %142

37:                                               ; preds = %29
  %38 = load i32, i32* %11, align 4
  %39 = icmp sgt i32 %38, 63
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32* null, i32** %5, align 8
  br label %179

41:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  %50 = getelementptr inbounds i32, i32* %47, i64 %48
  %51 = load i32, i32* %50, align 4
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 %52, i8* %56, align 1
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %98

69:                                               ; preds = %60
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 95
  br i1 %74, label %75, label %98

75:                                               ; preds = %69
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** @MDNS_DEFAULT_DOMAIN, align 8
  %78 = call i64 @strcasecmp(i8* %76, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = load i8*, i8** %9, align 8
  %82 = call i64 @strcasecmp(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load i8*, i8** %9, align 8
  %86 = call i64 @strcasecmp(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strlcat(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @strlcat(i8* %95, i8* %96, i32 8)
  br label %141

98:                                               ; preds = %84, %80, %75, %69, %60
  %99 = load i8*, i8** %9, align 8
  %100 = load i8*, i8** @MDNS_SUB_STR, align 8
  %101 = call i64 @strcasecmp(i8* %99, i8* %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  store i32 1, i32* %105, align 8
  br label %140

106:                                              ; preds = %98
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %139, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %112, align 8
  %116 = getelementptr inbounds i8*, i8** %112, i64 1
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %116, align 8
  %120 = getelementptr inbounds i8*, i8** %116, i64 1
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 5
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %120, align 8
  %124 = getelementptr inbounds i8*, i8** %120, i64 1
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 6
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %124, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  %138 = call i32 @memcpy(i8* %134, i8* %135, i32 %137)
  br label %139

139:                                              ; preds = %111, %106
  br label %140

140:                                              ; preds = %139, %103
  br label %141

141:                                              ; preds = %140, %88
  br label %173

142:                                              ; preds = %29
  %143 = load i32, i32* %11, align 4
  %144 = and i32 %143, 63
  %145 = shl i32 %144, 8
  %146 = load i32*, i32** %7, align 8
  %147 = load i64, i64* %10, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %10, align 8
  %149 = getelementptr inbounds i32, i32* %146, i64 %147
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %145, %150
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %14, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = load i64, i64* %14, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32*, i32** %7, align 8
  %157 = icmp uge i32* %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %142
  store i32* null, i32** %5, align 8
  br label %179

159:                                              ; preds = %142
  %160 = load i32*, i32** %6, align 8
  %161 = load i32*, i32** %6, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = call i32* @_mdns_read_fqdn(i32* %160, i32* %163, %struct.TYPE_3__* %164, i8* %165)
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %159
  %169 = load i32*, i32** %7, align 8
  %170 = load i64, i64* %10, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %5, align 8
  br label %179

172:                                              ; preds = %159
  store i32* null, i32** %5, align 8
  br label %179

173:                                              ; preds = %141
  br label %15

174:                                              ; preds = %15
  %175 = load i32*, i32** %7, align 8
  %176 = load i64, i64* %10, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  store i32* %178, i32** %5, align 8
  br label %179

179:                                              ; preds = %174, %172, %168, %158, %40
  %180 = load i32*, i32** %5, align 8
  ret i32* %180
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
