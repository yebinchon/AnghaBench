; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_route_copyin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_route_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route = type { i32*, i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @route_copyin(%struct.route* %0, %struct.route* %1, i64 %2) #0 {
  %4 = alloca %struct.route*, align 8
  %5 = alloca %struct.route*, align 8
  %6 = alloca i64, align 8
  store %struct.route* %0, %struct.route** %4, align 8
  store %struct.route* %1, %struct.route** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.route*, %struct.route** %5, align 8
  %8 = getelementptr inbounds %struct.route, %struct.route* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %3
  %12 = load %struct.route*, %struct.route** %5, align 8
  %13 = getelementptr inbounds %struct.route, %struct.route* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.route*, %struct.route** %5, align 8
  %18 = getelementptr inbounds %struct.route, %struct.route* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @LLE_REMREF(i32* %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.route*, %struct.route** %5, align 8
  %23 = getelementptr inbounds %struct.route, %struct.route* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.route*, %struct.route** %5, align 8
  %28 = getelementptr inbounds %struct.route, %struct.route* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @IFA_REMREF(i32* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.route*, %struct.route** %4, align 8
  %33 = load %struct.route*, %struct.route** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @bcopy(%struct.route* %32, %struct.route* %33, i64 %34)
  br label %179

36:                                               ; preds = %3
  %37 = load %struct.route*, %struct.route** %5, align 8
  %38 = getelementptr inbounds %struct.route, %struct.route* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.route*, %struct.route** %4, align 8
  %41 = getelementptr inbounds %struct.route, %struct.route* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %39, %42
  br i1 %43, label %44, label %124

44:                                               ; preds = %36
  %45 = load %struct.route*, %struct.route** %4, align 8
  %46 = getelementptr inbounds %struct.route, %struct.route* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.route*, %struct.route** %5, align 8
  %49 = getelementptr inbounds %struct.route, %struct.route* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.route*, %struct.route** %5, align 8
  %51 = getelementptr inbounds %struct.route, %struct.route* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.route*, %struct.route** %4, align 8
  %54 = getelementptr inbounds %struct.route, %struct.route* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %52, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %44
  %58 = load %struct.route*, %struct.route** %5, align 8
  %59 = getelementptr inbounds %struct.route, %struct.route* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.route*, %struct.route** %5, align 8
  %64 = getelementptr inbounds %struct.route, %struct.route* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @LLE_REMREF(i32* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.route*, %struct.route** %4, align 8
  %69 = getelementptr inbounds %struct.route, %struct.route* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.route*, %struct.route** %5, align 8
  %72 = getelementptr inbounds %struct.route, %struct.route* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  br label %84

73:                                               ; preds = %44
  %74 = load %struct.route*, %struct.route** %4, align 8
  %75 = getelementptr inbounds %struct.route, %struct.route* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.route*, %struct.route** %4, align 8
  %80 = getelementptr inbounds %struct.route, %struct.route* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @LLE_REMREF(i32* %81)
  br label %83

83:                                               ; preds = %78, %73
  br label %84

84:                                               ; preds = %83, %67
  %85 = load %struct.route*, %struct.route** %5, align 8
  %86 = getelementptr inbounds %struct.route, %struct.route* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.route*, %struct.route** %4, align 8
  %89 = getelementptr inbounds %struct.route, %struct.route* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %87, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %84
  %93 = load %struct.route*, %struct.route** %5, align 8
  %94 = getelementptr inbounds %struct.route, %struct.route* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.route*, %struct.route** %5, align 8
  %99 = getelementptr inbounds %struct.route, %struct.route* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @IFA_REMREF(i32* %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.route*, %struct.route** %4, align 8
  %104 = getelementptr inbounds %struct.route, %struct.route* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.route*, %struct.route** %5, align 8
  %107 = getelementptr inbounds %struct.route, %struct.route* %106, i32 0, i32 0
  store i32* %105, i32** %107, align 8
  br label %119

108:                                              ; preds = %84
  %109 = load %struct.route*, %struct.route** %4, align 8
  %110 = getelementptr inbounds %struct.route, %struct.route* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.route*, %struct.route** %4, align 8
  %115 = getelementptr inbounds %struct.route, %struct.route* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @IFA_REMREF(i32* %116)
  br label %118

118:                                              ; preds = %113, %108
  br label %119

119:                                              ; preds = %118, %102
  %120 = load %struct.route*, %struct.route** %4, align 8
  %121 = getelementptr inbounds %struct.route, %struct.route* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @rtfree(i32* %122)
  br label %179

124:                                              ; preds = %36
  %125 = load %struct.route*, %struct.route** %4, align 8
  %126 = getelementptr inbounds %struct.route, %struct.route* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %158

129:                                              ; preds = %124
  %130 = load %struct.route*, %struct.route** %5, align 8
  %131 = getelementptr inbounds %struct.route, %struct.route* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @rtfree(i32* %132)
  %134 = load %struct.route*, %struct.route** %5, align 8
  %135 = getelementptr inbounds %struct.route, %struct.route* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %129
  %139 = load %struct.route*, %struct.route** %5, align 8
  %140 = getelementptr inbounds %struct.route, %struct.route* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @LLE_REMREF(i32* %141)
  br label %143

143:                                              ; preds = %138, %129
  %144 = load %struct.route*, %struct.route** %5, align 8
  %145 = getelementptr inbounds %struct.route, %struct.route* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.route*, %struct.route** %5, align 8
  %150 = getelementptr inbounds %struct.route, %struct.route* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @IFA_REMREF(i32* %151)
  br label %153

153:                                              ; preds = %148, %143
  %154 = load %struct.route*, %struct.route** %4, align 8
  %155 = load %struct.route*, %struct.route** %5, align 8
  %156 = load i64, i64* %6, align 8
  %157 = call i32 @bcopy(%struct.route* %154, %struct.route* %155, i64 %156)
  br label %179

158:                                              ; preds = %124
  %159 = load %struct.route*, %struct.route** %4, align 8
  %160 = getelementptr inbounds %struct.route, %struct.route* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.route*, %struct.route** %4, align 8
  %165 = getelementptr inbounds %struct.route, %struct.route* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @IFA_REMREF(i32* %166)
  br label %168

168:                                              ; preds = %163, %158
  %169 = load %struct.route*, %struct.route** %4, align 8
  %170 = getelementptr inbounds %struct.route, %struct.route* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.route*, %struct.route** %4, align 8
  %175 = getelementptr inbounds %struct.route, %struct.route* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @LLE_REMREF(i32* %176)
  br label %178

178:                                              ; preds = %173, %168
  br label %179

179:                                              ; preds = %178, %153, %119, %31
  %180 = load %struct.route*, %struct.route** %4, align 8
  %181 = getelementptr inbounds %struct.route, %struct.route* %180, i32 0, i32 2
  store i32* null, i32** %181, align 8
  %182 = load %struct.route*, %struct.route** %4, align 8
  %183 = getelementptr inbounds %struct.route, %struct.route* %182, i32 0, i32 1
  store i32* null, i32** %183, align 8
  %184 = load %struct.route*, %struct.route** %4, align 8
  %185 = getelementptr inbounds %struct.route, %struct.route* %184, i32 0, i32 0
  store i32* null, i32** %185, align 8
  ret void
}

declare dso_local i32 @LLE_REMREF(i32*) #1

declare dso_local i32 @IFA_REMREF(i32*) #1

declare dso_local i32 @bcopy(%struct.route*, %struct.route*, i64) #1

declare dso_local i32 @rtfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
