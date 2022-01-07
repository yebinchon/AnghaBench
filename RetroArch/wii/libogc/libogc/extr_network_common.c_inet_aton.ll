; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_network_common.c_inet_aton.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_network_common.c_inet_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_aton(i8* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32* %12, i32** %11, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %9, align 1
  br label %15

15:                                               ; preds = %101, %2
  %16 = load i8, i8* %9, align 1
  %17 = call i64 @isdigit(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %178

20:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  store i32 10, i32* %7, align 4
  %21 = load i8, i8* %9, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 48
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %9, align 1
  %28 = load i8, i8* %9, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 120
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load i8, i8* %9, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 88
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %24
  store i32 16, i32* %7, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %9, align 1
  br label %40

39:                                               ; preds = %31
  store i32 8, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %35
  br label %41

41:                                               ; preds = %40, %20
  br label %42

42:                                               ; preds = %82, %41
  %43 = load i8, i8* %9, align 1
  %44 = call i64 @isdigit(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i8, i8* %9, align 1
  %51 = sext i8 %50 to i32
  %52 = sub nsw i32 %51, 48
  %53 = add nsw i32 %49, %52
  store i32 %53, i32* %6, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %9, align 1
  br label %82

57:                                               ; preds = %42
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 16
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load i8, i8* %9, align 1
  %62 = call i64 @isxdigit(i8 signext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 %65, 4
  %67 = load i8, i8* %9, align 1
  %68 = sext i8 %67 to i32
  %69 = add nsw i32 %68, 10
  %70 = load i8, i8* %9, align 1
  %71 = call i64 @islower(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 97, i32 65
  %75 = sub nsw i32 %69, %74
  %76 = or i32 %66, %75
  store i32 %76, i32* %6, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %9, align 1
  br label %81

80:                                               ; preds = %60, %57
  br label %83

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81, %46
  br label %42

83:                                               ; preds = %80
  %84 = load i8, i8* %9, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 46
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = icmp uge i32* %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %178

93:                                               ; preds = %87
  %94 = load i32, i32* %6, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %11, align 8
  store i32 %94, i32* %95, align 4
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %4, align 8
  %99 = load i8, i8* %98, align 1
  store i8 %99, i8* %9, align 1
  br label %101

100:                                              ; preds = %83
  br label %102

101:                                              ; preds = %93
  br label %15

102:                                              ; preds = %100
  %103 = load i8, i8* %9, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = load i8, i8* %9, align 1
  %108 = call i32 @isascii(i8 signext %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i8, i8* %9, align 1
  %112 = call i32 @isspace(i8 signext %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110, %106
  store i32 0, i32* %3, align 4
  br label %178

115:                                              ; preds = %110, %102
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %118 = ptrtoint i32* %116 to i64
  %119 = ptrtoint i32* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 4
  %122 = add nsw i64 %121, 1
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  switch i32 %124, label %169 [
    i32 0, label %125
    i32 1, label %126
    i32 2, label %127
    i32 3, label %137
    i32 4, label %151
  ]

125:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %178

126:                                              ; preds = %115
  br label %169

127:                                              ; preds = %115
  %128 = load i32, i32* %6, align 4
  %129 = icmp sgt i32 %128, 16777215
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %178

131:                                              ; preds = %127
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %133 = load i32, i32* %132, align 16
  %134 = shl i32 %133, 24
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  br label %169

137:                                              ; preds = %115
  %138 = load i32, i32* %6, align 4
  %139 = icmp sgt i32 %138, 65535
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %178

141:                                              ; preds = %137
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %143 = load i32, i32* %142, align 16
  %144 = shl i32 %143, 24
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 16
  %148 = or i32 %144, %147
  %149 = load i32, i32* %6, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %6, align 4
  br label %169

151:                                              ; preds = %115
  %152 = load i32, i32* %6, align 4
  %153 = icmp sgt i32 %152, 255
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %178

155:                                              ; preds = %151
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %157 = load i32, i32* %156, align 16
  %158 = shl i32 %157, 24
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 16
  %162 = or i32 %158, %161
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %164 = load i32, i32* %163, align 8
  %165 = shl i32 %164, 8
  %166 = or i32 %162, %165
  %167 = load i32, i32* %6, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %115, %155, %141, %131, %126
  %170 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %171 = icmp ne %struct.in_addr* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i32, i32* %6, align 4
  %174 = call i32 @htonl(i32 %173)
  %175 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %176 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %172, %169
  store i32 1, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %154, %140, %130, %125, %114, %92, %19
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i64 @islower(i8 signext) #1

declare dso_local i32 @isascii(i8 signext) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
