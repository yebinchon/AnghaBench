; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_cJSON.c_ensure.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_cJSON.c_ensure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 (i8*)*, i64 (i64)*, i64 (i8*, i64)* }

@LLONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i64)* @ensure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ensure(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  store i8* null, i8** %3, align 8
  br label %168

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp uge i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i8* null, i8** %3, align 8
  br label %168

30:                                               ; preds = %21, %16
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @LLONG_MAX, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i8* null, i8** %3, align 8
  br label %168

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ule i64 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8* %54, i8** %3, align 8
  br label %168

55:                                               ; preds = %35
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i8* null, i8** %3, align 8
  br label %168

61:                                               ; preds = %55
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @LLONG_MAX, align 8
  %64 = udiv i64 %63, 2
  %65 = icmp ugt i64 %62, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @LLONG_MAX, align 8
  %69 = icmp ule i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* @LLONG_MAX, align 8
  store i64 %71, i64* %7, align 8
  br label %73

72:                                               ; preds = %66
  store i8* null, i8** %3, align 8
  br label %168

73:                                               ; preds = %70
  br label %77

74:                                               ; preds = %61
  %75 = load i64, i64* %5, align 8
  %76 = mul i64 %75, 2
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %74, %73
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i64 (i8*, i64)*, i64 (i8*, i64)** %80, align 8
  %82 = icmp ne i64 (i8*, i64)* %81, null
  br i1 %82, label %83, label %110

83:                                               ; preds = %77
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i64 (i8*, i64)*, i64 (i8*, i64)** %86, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i64 %87(i8* %90, i64 %91)
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %6, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %83
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32 (i8*)*, i32 (i8*)** %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 %100(i8* %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i8* null, i8** %108, align 8
  store i8* null, i8** %3, align 8
  br label %168

109:                                              ; preds = %83
  br label %156

110:                                              ; preds = %77
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64 (i64)*, i64 (i64)** %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = call i64 %114(i64 %115)
  %117 = inttoptr i64 %116 to i8*
  store i8* %117, i8** %6, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %133, label %120

120:                                              ; preds = %110
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32 (i8*)*, i32 (i8*)** %123, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 %124(i8* %127)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i8* null, i8** %132, align 8
  store i8* null, i8** %3, align 8
  br label %168

133:                                              ; preds = %110
  %134 = load i8*, i8** %6, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load i8*, i8** %6, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, 1
  %145 = trunc i64 %144 to i32
  %146 = call i32 @memcpy(i8* %137, i8* %140, i32 %145)
  br label %147

147:                                              ; preds = %136, %133
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32 (i8*)*, i32 (i8*)** %150, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 %151(i8* %154)
  br label %156

156:                                              ; preds = %147, %109
  %157 = load i64, i64* %7, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = load i8*, i8** %6, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  store i8* %167, i8** %3, align 8
  br label %168

168:                                              ; preds = %156, %120, %96, %72, %60, %47, %34, %29, %15
  %169 = load i8*, i8** %3, align 8
  ret i8* %169
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
