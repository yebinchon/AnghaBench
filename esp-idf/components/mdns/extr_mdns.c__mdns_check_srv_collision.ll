; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_check_srv_collision.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_check_srv_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@_mdns_server = common dso_local global %struct.TYPE_5__* null, align 8
@MDNS_DEFAULT_DOMAIN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32, i8*, i8*)* @_mdns_check_srv_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mdns_check_srv_collision(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @_str_null_or_empty(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %166

32:                                               ; preds = %6
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = add i64 14, %37
  store i64 %38, i64* %15, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i64 @strlen(i8* %39)
  store i64 %40, i64* %16, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = call i64 @strlen(i8* %41)
  store i64 %42, i64* %17, align 8
  %43 = load i64, i64* %16, align 8
  %44 = add i64 9, %43
  %45 = load i64, i64* %17, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %18, align 8
  %47 = load i64, i64* %18, align 8
  %48 = load i64, i64* %15, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %166

51:                                               ; preds = %32
  %52 = load i64, i64* %18, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 -1, i32* %7, align 4
  br label %166

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  store i32 0, i32* %19, align 4
  %58 = load i64, i64* %15, align 8
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %20, align 8
  %60 = alloca i32, i64 %58, align 16
  store i64 %58, i64* %21, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @_mdns_append_u16(i32* %60, i32* %19, i32 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @_mdns_append_u16(i32* %60, i32* %19, i32 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @_mdns_append_u16(i32* %60, i32* %19, i32 %71)
  %73 = load i64, i64* %14, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %19, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %19, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %60, i64 %77
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %60, i64 %80
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @memcpy(i32* %81, i8* %84, i64 %85)
  %87 = load i64, i64* %14, align 8
  %88 = load i32, i32* %19, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %19, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %60, i64 %94
  store i32 5, i32* %95, align 4
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %60, i64 %97
  %99 = load i8*, i8** @MDNS_DEFAULT_DOMAIN, align 8
  %100 = call i32 @memcpy(i32* %98, i8* %99, i64 5)
  %101 = load i32, i32* %19, align 4
  %102 = add nsw i32 %101, 5
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %19, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %19, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %60, i64 %105
  store i32 0, i32* %106, align 4
  store i32 0, i32* %22, align 4
  %107 = load i64, i64* %18, align 8
  %108 = alloca i32, i64 %107, align 16
  store i64 %107, i64* %23, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @_mdns_append_u16(i32* %108, i32* %22, i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @_mdns_append_u16(i32* %108, i32* %22, i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @_mdns_append_u16(i32* %108, i32* %22, i32 %113)
  %115 = load i64, i64* %16, align 8
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* %22, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %22, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %108, i64 %119
  store i32 %116, i32* %120, align 4
  %121 = load i32, i32* %22, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %108, i64 %122
  %124 = load i8*, i8** %12, align 8
  %125 = load i64, i64* %16, align 8
  %126 = call i32 @memcpy(i32* %123, i8* %124, i64 %125)
  %127 = load i64, i64* %16, align 8
  %128 = load i32, i32* %22, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %22, align 4
  %132 = load i64, i64* %17, align 8
  %133 = trunc i64 %132 to i32
  %134 = load i32, i32* %22, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %22, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %108, i64 %136
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %22, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %108, i64 %139
  %141 = load i8*, i8** %13, align 8
  %142 = load i64, i64* %17, align 8
  %143 = call i32 @memcpy(i32* %140, i8* %141, i64 %142)
  %144 = load i64, i64* %17, align 8
  %145 = load i32, i32* %22, align 4
  %146 = sext i32 %145 to i64
  %147 = add i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %22, align 4
  %149 = load i32, i32* %22, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %22, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %108, i64 %151
  store i32 0, i32* %152, align 4
  %153 = load i64, i64* %15, align 8
  %154 = call i32 @memcmp(i32* %60, i32* %108, i64 %153)
  store i32 %154, i32* %24, align 4
  %155 = load i32, i32* %24, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %57
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %164

158:                                              ; preds = %57
  %159 = load i32, i32* %24, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 1, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %164

162:                                              ; preds = %158
  br label %163

163:                                              ; preds = %162
  store i32 0, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %164

164:                                              ; preds = %163, %161, %157
  %165 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %165)
  br label %166

166:                                              ; preds = %164, %55, %50, %31
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

declare dso_local i64 @_str_null_or_empty(i8*) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @_mdns_append_u16(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
