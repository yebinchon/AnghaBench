; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_newsysctl.c_sysctl_io_number.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_newsysctl.c_sysctl_io_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i32, i32, i32, i64 }

@ERANGE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysctl_io_number(%struct.sysctl_req* %0, i64 %1, i64 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sysctl_req*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sysctl_req* %0, %struct.sysctl_req** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32*, i32** %11, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %5
  %19 = load i64, i64* %9, align 8
  %20 = icmp eq i64 %19, 4
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %23 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load i64, i64* %9, align 8
  %29 = icmp eq i64 %28, 8
  br i1 %29, label %30, label %47

30:                                               ; preds = %27, %18
  %31 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %32 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i64, i64* %8, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @ERANGE, align 4
  store i32 %43, i32* %6, align 4
  br label %132

44:                                               ; preds = %35
  %45 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %46 = call i32 (%struct.sysctl_req*, ...) @SYSCTL_OUT(%struct.sysctl_req* %45, i32* %12, i64 4)
  store i32 %46, i32* %13, align 4
  br label %51

47:                                               ; preds = %30, %27, %21
  %48 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 (%struct.sysctl_req*, ...) @SYSCTL_OUT(%struct.sysctl_req* %48, i64* %8, i64 %49)
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %56 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %6, align 4
  br label %132

61:                                               ; preds = %54
  %62 = load i8*, i8** %10, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @EPERM, align 4
  store i32 %65, i32* %6, align 4
  br label %132

66:                                               ; preds = %61
  %67 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %68 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = load i64, i64* %9, align 8
  %74 = icmp eq i64 %73, 8
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %77 = bitcast i32* %12 to i8*
  %78 = call i32 @SYSCTL_IN(%struct.sysctl_req* %76, i8* %77, i64 4)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = load i8*, i8** %10, align 8
  %85 = bitcast i8* %84 to i64*
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %81, %75
  br label %122

87:                                               ; preds = %72, %66
  %88 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %89 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp eq i64 %91, 8
  br i1 %92, label %93, label %116

93:                                               ; preds = %87
  %94 = load i64, i64* %9, align 8
  %95 = icmp eq i64 %94, 4
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %98 = bitcast i64* %8 to i8*
  %99 = call i32 @SYSCTL_IN(%struct.sysctl_req* %97, i8* %98, i64 8)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %96
  %103 = load i64, i64* %8, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %8, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @ERANGE, align 4
  store i32 %110, i32* %6, align 4
  br label %132

111:                                              ; preds = %102
  %112 = load i32, i32* %12, align 4
  %113 = load i8*, i8** %10, align 8
  %114 = bitcast i8* %113 to i32*
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %111, %96
  br label %121

116:                                              ; preds = %93, %87
  %117 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load i64, i64* %9, align 8
  %120 = call i32 @SYSCTL_IN(%struct.sysctl_req* %117, i8* %118, i64 %119)
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %116, %115
  br label %122

122:                                              ; preds = %121, %86
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = load i32*, i32** %11, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32*, i32** %11, align 8
  store i32 1, i32* %129, align 4
  br label %130

130:                                              ; preds = %128, %125, %122
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %109, %64, %59, %42
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @SYSCTL_OUT(%struct.sysctl_req*, ...) #1

declare dso_local i32 @SYSCTL_IN(%struct.sysctl_req*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
