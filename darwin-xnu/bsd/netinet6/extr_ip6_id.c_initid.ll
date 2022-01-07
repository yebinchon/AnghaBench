; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_id.c_initid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_id.c_initid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomtab = type { i32, i32, i32, i32, i32, i32, i32, i64*, i32, i64, i64, i64, i32, i8*, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.randomtab*)* @initid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initid(%struct.randomtab* %0) #0 {
  %2 = alloca %struct.randomtab*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.randomtab* %0, %struct.randomtab** %2, align 8
  %7 = call i32 (...) @net_uptime()
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %3, align 8
  store i32 1, i32* %6, align 4
  %9 = call i32 (...) @RandomULong()
  %10 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %11 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = urem i32 %9, %12
  %14 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %15 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = call i32 (...) @RandomULong()
  %17 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %18 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 32, %19
  %21 = add nsw i32 %20, 1
  %22 = lshr i32 -1, %21
  %23 = and i32 %16, %22
  %24 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %25 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = call i32 (...) @RandomULong()
  %27 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %28 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 32, %29
  %31 = add nsw i32 %30, 1
  %32 = lshr i32 -1, %31
  %33 = and i32 %26, %32
  %34 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %35 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = call i32 (...) @RandomULong()
  %37 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %38 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 32, %39
  %41 = lshr i32 -1, %40
  %42 = and i32 %36, %41
  %43 = or i32 %42, 1
  %44 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %45 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %47 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (...) @RandomULong()
  %50 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %51 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 32, %52
  %54 = lshr i32 -1, %53
  %55 = and i32 %49, %54
  %56 = and i32 %55, -2
  %57 = zext i32 %56 to i64
  %58 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %59 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @pmod(i32 %48, i64 %57, i32 %60)
  %62 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %63 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %62, i32 0, i32 15
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %70, %1
  %65 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %66 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = urem i32 %67, 3
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %72 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %73, 2
  store i32 %74, i32* %72, align 4
  br label %64

75:                                               ; preds = %64
  %76 = call i32 (...) @RandomULong()
  %77 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %78 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = urem i32 %76, %79
  %81 = zext i32 %80 to i64
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %126, %75
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %127

85:                                               ; preds = %82
  store i64 0, i64* %5, align 8
  br label %86

86:                                               ; preds = %106, %85
  %87 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %88 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %87, i32 0, i32 7
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp ugt i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %86
  %95 = load i64, i64* %4, align 8
  %96 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %97 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %96, i32 0, i32 7
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = urem i64 %95, %101
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %109

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %5, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %5, align 8
  br label %86

109:                                              ; preds = %104, %86
  %110 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %111 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %110, i32 0, i32 7
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %5, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 0, i32* %6, align 4
  br label %126

118:                                              ; preds = %109
  %119 = load i64, i64* %4, align 8
  %120 = add i64 %119, 1
  %121 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %122 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = zext i32 %123 to i64
  %125 = urem i64 %120, %124
  store i64 %125, i64* %4, align 8
  br label %126

126:                                              ; preds = %118, %117
  br label %82

127:                                              ; preds = %82
  %128 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %129 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %128, i32 0, i32 12
  %130 = load i32, i32* %129, align 8
  %131 = load i64, i64* %4, align 8
  %132 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %133 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @pmod(i32 %130, i64 %131, i32 %134)
  %136 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %137 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %136, i32 0, i32 13
  store i8* %135, i8** %137, align 8
  %138 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %139 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %138, i32 0, i32 11
  store i64 0, i64* %139, align 8
  %140 = load i64, i64* %3, align 8
  %141 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %142 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %141, i32 0, i32 9
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %140, %143
  %145 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %146 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %145, i32 0, i32 10
  store i64 %144, i64* %146, align 8
  %147 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %148 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %127
  br label %158

152:                                              ; preds = %127
  %153 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %154 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, 1
  %157 = shl i32 1, %156
  br label %158

158:                                              ; preds = %152, %151
  %159 = phi i32 [ 0, %151 ], [ %157, %152 ]
  %160 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %161 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %160, i32 0, i32 8
  store i32 %159, i32* %161, align 8
  ret void
}

declare dso_local i32 @net_uptime(...) #1

declare dso_local i32 @RandomULong(...) #1

declare dso_local i8* @pmod(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
