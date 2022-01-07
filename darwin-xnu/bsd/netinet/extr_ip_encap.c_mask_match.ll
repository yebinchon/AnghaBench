; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_encap.c_mask_match.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_encap.c_mask_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encaptab = type { i64, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32, i64 }
%struct.sockaddr_storage = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.encaptab*, %struct.sockaddr*, %struct.sockaddr*)* @mask_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mask_match(%struct.encaptab* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.encaptab*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_storage, align 8
  %9 = alloca %struct.sockaddr_storage, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.encaptab* %0, %struct.encaptab** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %18, 16
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %24, 16
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %3
  store i32 0, i32* %4, align 4
  br label %182

27:                                               ; preds = %20
  %28 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %29 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.encaptab*, %struct.encaptab** %5, align 8
  %32 = getelementptr inbounds %struct.encaptab, %struct.encaptab* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.encaptab*, %struct.encaptab** %5, align 8
  %40 = getelementptr inbounds %struct.encaptab, %struct.encaptab* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35, %27
  store i32 0, i32* %4, align 4
  br label %182

44:                                               ; preds = %35
  %45 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.encaptab*, %struct.encaptab** %5, align 8
  %49 = getelementptr inbounds %struct.encaptab, %struct.encaptab* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %47, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %44
  %54 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %55 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.encaptab*, %struct.encaptab** %5, align 8
  %58 = getelementptr inbounds %struct.encaptab, %struct.encaptab* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53, %44
  store i32 0, i32* %4, align 4
  br label %182

63:                                               ; preds = %53
  store i32 0, i32* %14, align 4
  %64 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %65 = bitcast %struct.sockaddr* %64 to i32*
  store i32* %65, i32** %11, align 8
  %66 = load %struct.encaptab*, %struct.encaptab** %5, align 8
  %67 = getelementptr inbounds %struct.encaptab, %struct.encaptab* %66, i32 0, i32 4
  store i32* %67, i32** %12, align 8
  %68 = bitcast %struct.sockaddr_storage* %8 to i32*
  store i32* %68, i32** %13, align 8
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %101, %63
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %72 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %69
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %80, %85
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 8, i32 0
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %75
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %69

104:                                              ; preds = %69
  %105 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %106 = bitcast %struct.sockaddr* %105 to i32*
  store i32* %106, i32** %11, align 8
  %107 = load %struct.encaptab*, %struct.encaptab** %5, align 8
  %108 = getelementptr inbounds %struct.encaptab, %struct.encaptab* %107, i32 0, i32 3
  store i32* %108, i32** %12, align 8
  %109 = bitcast %struct.sockaddr_storage* %9 to i32*
  store i32* %109, i32** %13, align 8
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %142, %104
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %113 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %145

116:                                              ; preds = %110
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %121, %126
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %127, i32* %131, align 4
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 8, i32 0
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %14, align 4
  br label %142

142:                                              ; preds = %116
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %110

145:                                              ; preds = %110
  %146 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %147 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  store i32 %148, i32* %149, align 8
  %150 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %151 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 1
  store i64 %152, i64* %153, align 8
  %154 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %155 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  store i32 %156, i32* %157, align 8
  %158 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %159 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 1
  store i64 %160, i64* %161, align 8
  %162 = load %struct.encaptab*, %struct.encaptab** %5, align 8
  %163 = getelementptr inbounds %struct.encaptab, %struct.encaptab* %162, i32 0, i32 2
  %164 = load %struct.encaptab*, %struct.encaptab** %5, align 8
  %165 = getelementptr inbounds %struct.encaptab, %struct.encaptab* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @bcmp(%struct.sockaddr_storage* %8, %struct.TYPE_2__* %163, i32 %167)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %145
  %171 = load %struct.encaptab*, %struct.encaptab** %5, align 8
  %172 = getelementptr inbounds %struct.encaptab, %struct.encaptab* %171, i32 0, i32 1
  %173 = load %struct.encaptab*, %struct.encaptab** %5, align 8
  %174 = getelementptr inbounds %struct.encaptab, %struct.encaptab* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @bcmp(%struct.sockaddr_storage* %9, %struct.TYPE_2__* %172, i32 %176)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %4, align 4
  br label %182

181:                                              ; preds = %170, %145
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %179, %62, %43, %26
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i64 @bcmp(%struct.sockaddr_storage*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
