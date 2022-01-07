; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_name_string.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_name_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_name = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s=%s, \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"/emailAddress=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x509_name_string(%struct.x509_name* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.x509_name*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.x509_name* %0, %struct.x509_name** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %131

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %8, align 8
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %66, %14
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %22 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %34 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @x509_name_attr_str(i32 %39)
  %41 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %42 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, i8*, i32, ...) @os_snprintf(i8* %26, i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %25
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = icmp sge i64 %53, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51, %25
  br label %128

61:                                               ; preds = %51
  %62 = load i32, i32* %9, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %7, align 8
  br label %66

66:                                               ; preds = %61
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %19

69:                                               ; preds = %19
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = icmp ugt i8* %70, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 -1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 -2
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 44
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %88, i8** %7, align 8
  %89 = load i8*, i8** %7, align 8
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 -1
  store i8* %91, i8** %7, align 8
  %92 = load i8*, i8** %7, align 8
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %86, %80, %74, %69
  %94 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %95 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %127

98:                                               ; preds = %93
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %107 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i8*, i32, i8*, i32, ...) @os_snprintf(i8* %99, i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %98
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = icmp sge i64 %114, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %112, %98
  br label %128

122:                                              ; preds = %112
  %123 = load i32, i32* %9, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %7, align 8
  br label %127

127:                                              ; preds = %122, %93
  br label %128

128:                                              ; preds = %127, %121, %60
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 -1
  store i8 0, i8* %130, align 1
  br label %131

131:                                              ; preds = %128, %13
  ret void
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @x509_name_attr_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
