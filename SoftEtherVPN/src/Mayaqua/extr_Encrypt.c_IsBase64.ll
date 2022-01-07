; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_IsBase64.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_IsBase64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"-----BEGIN\00", align 1
@INFINITE = common dso_local global i64 0, align 8
@EOF = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsBase64(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %157

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @SearchAsciiInBinary(i64 %13, i64 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  %18 = load i64, i64* @INFINITE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %157

21:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  br label %22

22:                                               ; preds = %153, %21
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %156

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %5, align 1
  store i32 0, i32* %6, align 4
  %36 = load i8, i8* %5, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 97, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i8, i8* %5, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 122
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %6, align 4
  br label %148

44:                                               ; preds = %39, %28
  %45 = load i8, i8* %5, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sle i32 65, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8, i8* %5, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sle i32 %50, 90
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %6, align 4
  br label %147

53:                                               ; preds = %48, %44
  %54 = load i8, i8* %5, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sle i32 48, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i8, i8* %5, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sle i32 %59, 57
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 1, i32* %6, align 4
  br label %146

62:                                               ; preds = %57, %53
  %63 = load i8, i8* %5, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 58
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = load i8, i8* %5, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 46
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load i8, i8* %5, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 59
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i8, i8* %5, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 44
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %70, %66, %62
  store i32 1, i32* %6, align 4
  br label %145

79:                                               ; preds = %74
  %80 = load i8, i8* %5, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 33
  br i1 %82, label %99, label %83

83:                                               ; preds = %79
  %84 = load i8, i8* %5, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 38
  br i1 %86, label %99, label %87

87:                                               ; preds = %83
  %88 = load i8, i8* %5, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 35
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = load i8, i8* %5, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 40
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i8, i8* %5, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 41
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %91, %87, %83, %79
  store i32 1, i32* %6, align 4
  br label %144

100:                                              ; preds = %95
  %101 = load i8, i8* %5, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 45
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i8, i8* %5, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 32
  br i1 %107, label %108, label %109

108:                                              ; preds = %104, %100
  store i32 1, i32* %6, align 4
  br label %143

109:                                              ; preds = %104
  %110 = load i8, i8* %5, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 13
  br i1 %112, label %123, label %113

113:                                              ; preds = %109
  %114 = load i8, i8* %5, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 10
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = load i8, i8* %5, align 1
  %119 = sext i8 %118 to i32
  %120 = load i8, i8* @EOF, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117, %113, %109
  store i32 1, i32* %6, align 4
  br label %142

124:                                              ; preds = %117
  %125 = load i8, i8* %5, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 9
  br i1 %127, label %140, label %128

128:                                              ; preds = %124
  %129 = load i8, i8* %5, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 61
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = load i8, i8* %5, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 43
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i8, i8* %5, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 47
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %132, %128, %124
  store i32 1, i32* %6, align 4
  br label %141

141:                                              ; preds = %140, %136
  br label %142

142:                                              ; preds = %141, %123
  br label %143

143:                                              ; preds = %142, %108
  br label %144

144:                                              ; preds = %143, %99
  br label %145

145:                                              ; preds = %144, %78
  br label %146

146:                                              ; preds = %145, %61
  br label %147

147:                                              ; preds = %146, %52
  br label %148

148:                                              ; preds = %147, %43
  %149 = load i32, i32* %6, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %157

152:                                              ; preds = %148
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %4, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %4, align 8
  br label %22

156:                                              ; preds = %22
  store i32 1, i32* %2, align 4
  br label %157

157:                                              ; preds = %156, %151, %20, %9
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i64 @SearchAsciiInBinary(i64, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
