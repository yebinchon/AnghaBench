; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfioctl_ioc_iface.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfioctl_ioc_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_iface_32 = type { i32, i8*, i32, i32, i32 }
%struct.pfioc_iface_64 = type { i32, i8*, i32, i32, i32 }
%struct.proc = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pfioc_iface_32*, %struct.pfioc_iface_64*, %struct.proc*)* @pfioctl_ioc_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfioctl_ioc_iface(i32 %0, %struct.pfioc_iface_32* %1, %struct.pfioc_iface_64* %2, %struct.proc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfioc_iface_32*, align 8
  %7 = alloca %struct.pfioc_iface_64*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pfioc_iface_32* %1, %struct.pfioc_iface_32** %6, align 8
  store %struct.pfioc_iface_64* %2, %struct.pfioc_iface_64** %7, align 8
  store %struct.proc* %3, %struct.proc** %8, align 8
  %13 = load %struct.proc*, %struct.proc** %8, align 8
  %14 = call i32 @proc_is64bit(%struct.proc* %13)
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %162 [
    i32 129, label %16
    i32 128, label %84
    i32 130, label %123
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.pfioc_iface_64*, %struct.pfioc_iface_64** %7, align 8
  %21 = getelementptr inbounds %struct.pfioc_iface_64, %struct.pfioc_iface_64* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  br label %27

23:                                               ; preds = %16
  %24 = load %struct.pfioc_iface_32*, %struct.pfioc_iface_32** %6, align 8
  %25 = getelementptr inbounds %struct.pfioc_iface_32, %struct.pfioc_iface_32* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i32 [ %22, %19 ], [ %26, %23 ]
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.pfioc_iface_64*, %struct.pfioc_iface_64** %7, align 8
  %33 = getelementptr inbounds %struct.pfioc_iface_64, %struct.pfioc_iface_64* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  br label %39

35:                                               ; preds = %27
  %36 = load %struct.pfioc_iface_32*, %struct.pfioc_iface_32** %6, align 8
  %37 = getelementptr inbounds %struct.pfioc_iface_32, %struct.pfioc_iface_32* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32 [ %34, %31 ], [ %38, %35 ]
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 4
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @ENODEV, align 4
  store i32 %45, i32* %10, align 4
  br label %164

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.pfioc_iface_64*, %struct.pfioc_iface_64** %7, align 8
  %51 = getelementptr inbounds %struct.pfioc_iface_64, %struct.pfioc_iface_64* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 7
  store i8 0, i8* %53, align 1
  br label %59

54:                                               ; preds = %46
  %55 = load %struct.pfioc_iface_32*, %struct.pfioc_iface_32** %6, align 8
  %56 = getelementptr inbounds %struct.pfioc_iface_32, %struct.pfioc_iface_32* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 7
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.pfioc_iface_64*, %struct.pfioc_iface_64** %7, align 8
  %64 = getelementptr inbounds %struct.pfioc_iface_64, %struct.pfioc_iface_64* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  br label %70

66:                                               ; preds = %59
  %67 = load %struct.pfioc_iface_32*, %struct.pfioc_iface_32** %6, align 8
  %68 = getelementptr inbounds %struct.pfioc_iface_32, %struct.pfioc_iface_32* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i8* [ %65, %62 ], [ %69, %66 ]
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.pfioc_iface_64*, %struct.pfioc_iface_64** %7, align 8
  %77 = getelementptr inbounds %struct.pfioc_iface_64, %struct.pfioc_iface_64* %76, i32 0, i32 3
  br label %81

78:                                               ; preds = %70
  %79 = load %struct.pfioc_iface_32*, %struct.pfioc_iface_32** %6, align 8
  %80 = getelementptr inbounds %struct.pfioc_iface_32, %struct.pfioc_iface_32* %79, i32 0, i32 3
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i32* [ %77, %75 ], [ %80, %78 ]
  %83 = call i32 @pfi_get_ifaces(i8* %71, i32 %72, i32* %82)
  store i32 %83, i32* %10, align 4
  br label %164

84:                                               ; preds = %4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.pfioc_iface_64*, %struct.pfioc_iface_64** %7, align 8
  %89 = getelementptr inbounds %struct.pfioc_iface_64, %struct.pfioc_iface_64* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 7
  store i8 0, i8* %91, align 1
  br label %97

92:                                               ; preds = %84
  %93 = load %struct.pfioc_iface_32*, %struct.pfioc_iface_32** %6, align 8
  %94 = getelementptr inbounds %struct.pfioc_iface_32, %struct.pfioc_iface_32* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 7
  store i8 0, i8* %96, align 1
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.pfioc_iface_64*, %struct.pfioc_iface_64** %7, align 8
  %102 = getelementptr inbounds %struct.pfioc_iface_64, %struct.pfioc_iface_64* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  br label %108

104:                                              ; preds = %97
  %105 = load %struct.pfioc_iface_32*, %struct.pfioc_iface_32** %6, align 8
  %106 = getelementptr inbounds %struct.pfioc_iface_32, %struct.pfioc_iface_32* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi i8* [ %103, %100 ], [ %107, %104 ]
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load %struct.pfioc_iface_64*, %struct.pfioc_iface_64** %7, align 8
  %114 = getelementptr inbounds %struct.pfioc_iface_64, %struct.pfioc_iface_64* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  br label %120

116:                                              ; preds = %108
  %117 = load %struct.pfioc_iface_32*, %struct.pfioc_iface_32** %6, align 8
  %118 = getelementptr inbounds %struct.pfioc_iface_32, %struct.pfioc_iface_32* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  br label %120

120:                                              ; preds = %116, %112
  %121 = phi i32 [ %115, %112 ], [ %119, %116 ]
  %122 = call i32 @pfi_set_flags(i8* %109, i32 %121)
  store i32 %122, i32* %10, align 4
  br label %164

123:                                              ; preds = %4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.pfioc_iface_64*, %struct.pfioc_iface_64** %7, align 8
  %128 = getelementptr inbounds %struct.pfioc_iface_64, %struct.pfioc_iface_64* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 7
  store i8 0, i8* %130, align 1
  br label %136

131:                                              ; preds = %123
  %132 = load %struct.pfioc_iface_32*, %struct.pfioc_iface_32** %6, align 8
  %133 = getelementptr inbounds %struct.pfioc_iface_32, %struct.pfioc_iface_32* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 7
  store i8 0, i8* %135, align 1
  br label %136

136:                                              ; preds = %131, %126
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load %struct.pfioc_iface_64*, %struct.pfioc_iface_64** %7, align 8
  %141 = getelementptr inbounds %struct.pfioc_iface_64, %struct.pfioc_iface_64* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  br label %147

143:                                              ; preds = %136
  %144 = load %struct.pfioc_iface_32*, %struct.pfioc_iface_32** %6, align 8
  %145 = getelementptr inbounds %struct.pfioc_iface_32, %struct.pfioc_iface_32* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  br label %147

147:                                              ; preds = %143, %139
  %148 = phi i8* [ %142, %139 ], [ %146, %143 ]
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load %struct.pfioc_iface_64*, %struct.pfioc_iface_64** %7, align 8
  %153 = getelementptr inbounds %struct.pfioc_iface_64, %struct.pfioc_iface_64* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  br label %159

155:                                              ; preds = %147
  %156 = load %struct.pfioc_iface_32*, %struct.pfioc_iface_32** %6, align 8
  %157 = getelementptr inbounds %struct.pfioc_iface_32, %struct.pfioc_iface_32* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  br label %159

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %154, %151 ], [ %158, %155 ]
  %161 = call i32 @pfi_clear_flags(i8* %148, i32 %160)
  store i32 %161, i32* %10, align 4
  br label %164

162:                                              ; preds = %4
  %163 = call i32 @VERIFY(i32 0)
  br label %164

164:                                              ; preds = %162, %159, %120, %81, %44
  %165 = load i32, i32* %10, align 4
  ret i32 %165
}

declare dso_local i32 @proc_is64bit(%struct.proc*) #1

declare dso_local i32 @pfi_get_ifaces(i8*, i32, i32*) #1

declare dso_local i32 @pfi_set_flags(i8*, i32) #1

declare dso_local i32 @pfi_clear_flags(i8*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
